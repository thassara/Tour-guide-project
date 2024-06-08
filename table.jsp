<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/table.css">
    <link rel="stylesheet" href="../style/footer.css">
    <title>Shopping Cart</title>
</head>
<body>
<div class="background">

    <h1>My Bookings</h1>

    <table id="customers">
      <tr>
        <th>Name</th>
        <th>Email</th>
        <th>No Gusts</th>
        <th></th>
        
      </tr>
      <c:forEach var="pck" items="${book}">
      <tr>
      
      
        
        <td>${pck.name}</td>
        <td>${pck.email}</td>
        <td>${pck.noguest}</td>
      
            
        <td>
                <div class="btn-group">
           
             <c:url value="bookingupdate.jsp" var="bupdate"> 
             <c:param name="id" value="${pck.id}"></c:param>
                  <c:param name="name" value="${pck.name}"></c:param>
                  <c:param  name="email" value="${pck.email}"></c:param>
                  <c:param  name="noguest" value="${pck.noguest}"></c:param>
                  <c:param  name="passno" value="${pck.passno}"></c:param>
               </c:url>
           
               <a href="${bupdate}">
              <button class="btn edit">Update</button></a>


              
         
             <form action="BookingDeleteServlet" method="post"><input type="hidden" value="${pck.id}" name="bid"> <input type="submit" value="Delete"></form>
            </div>

        </td>
        
      </tr>
      </c:forEach>
  
      
    </table>


</body>
</html>