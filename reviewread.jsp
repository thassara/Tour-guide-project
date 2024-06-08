<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <!-- Bootstrap -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

  <title>
    Review control
  </title>
</head>

<body>
  <nav class="navbar navbar-light justify-content-center fs-3 mb-5" style="background-color: #00ff5573;">
   User Reviews
  </nav>
  
 
    
  
  

  <div class="container">
 
	

    <table class="table table-hover text-center">
      <thead class="table-dark">
        <tr>
          <th scope="col">name</th>
          <th scope="col">email</th>
          <th scope="col">message</th>
          <th scope="col">image</th>
          <th scope="col"></th>
          
        
        </tr>
      </thead>
        
  
    
<c:forEach var="re" items="${re}">	
		  
	<tr>
	
     <td>${re.name}</td>
      <td>${re.email}</td>
       <td>${re.message}</td>
        <td>${re.image}</td>
        <td>
            <div class="btn-group">
           
             <c:url value="reviewupdate.jsp" var="rupdate"> 
             <c:param name="id" value="${re.id}"></c:param>
                  <c:param name="name" value="${re.name}"></c:param>
                  <c:param  name="email" value="${re.email}"></c:param>
                  <c:param  name="message" value="${re.message}"></c:param>
                  <c:param  name="image" value="${re.image}"></c:param>
               </c:url>
           
               <a href="${rupdate}">
              <button class="btn edit">Update</button></a>


              
         
             <form action="Reviewdeleteservlet" method="post"><input type="hidden" value="${re.id}" name="rid"> <input type="submit" value="Delete"></form>
            </div>
        
        
        
        
        </td>  </tr></c:forEach>
       
        <!-- Table rows will be populated dynamically -->
    
      
      
    </table>
  </div>

  <!-- Bootstrap -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

</body>

</html>
