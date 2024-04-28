
let menu = document.querySelector('#menu-btn');
let navbar = document.querySelector('.header .navbar');

menu.onclick = () => {
	menu.classList.toggle('fa-times');
	navbar.classList.toggle('active');
}
window.onscroll = () => {
	menu.classList.remove('fa-times');
	navbar.classList.remove('active');
};
var swiper = new Swiper(".home-slider", {
	loop: true,
	navigation: {
		nextEl: ".swiper-button-next",
		prevEl: ".swiper-button-prev",
	},
});

function search() {
	const x = document.getElementById("searchText").value;
	switch (x.toLowerCase()) {
		case ("Package").toLowerCase():
			window.open("Packages.jsp");
			break;
		case ("About us").toLowerCase():
			window.open("aboutus.html");
			break;
		case ("Home").toLowerCase():
			window.open("home1.jsp");
			break;
		case ("Tour").toLowerCase():
			window.open("Packages.jsp");
			break;
		case ("Down South").toLowerCase():
			window.open("Packages.jsp");
			break;
		case ("Up Country").toLowerCase():
			window.open("Packages.jsp");
			break;
		case ("north").toLowerCase():
			window.open("Packages.jsp");
			break;
		case ("honeymoon").toLowerCase():
			window.open("Packages.jsp");
			break;
		case ("control").toLowerCase():
			window.open("control_page.html");
			break;

	}
}

function validateForm() {
	let x = document.getElementsByName("name")[0].value;
	let y = document.getElementsByName("price")[0].value;
	let z = document.getElementsByName("Duration")[0].value;
	let i = document.getElementsByName("images")[0].value;
	let j = document.getElementsByName("details")[0].value;

	if (x == "") {
		alert("Name must be filled out");
		return false;
	}
	if (y == "") {
		alert("price must be filled out");
		return false;
	}
	if (parseFloat(y) < 0) {
		alert("Price must contain positive");
		return false;
	}
	if (z == "") {
		alert("Duration must be filled out");
		return false;
	}
	if (parseFloat(z) < 0) {
		alert("Duration must contain positive days");
		return false;
	}
	if (i == "") {
		alert("please add image");
		return false;
	}
	if (j.length < 10) {
		alert("please enter more than 10 words");
		return false;
	}


}
function validateForm1() {
	let x = document.getElementsByName("name")[0].value;
	let y = document.getElementsByName("price")[0].value;
	let z = document.getElementsByName("duration")[0].value;
	let i = document.getElementsByName("images")[0].value;
	let j = document.getElementsByName("details")[0].value;

	if (x == "") {
		alert("Name must be filled out");
		return false;
	}
	if (y == "") {
		alert("price must be filled out");
		return false;
	}
	if (parseFloat(y) < 0) {
		alert("Price must contain positive");
		return false;
	}
	if (z == "") {
		alert("Duration must be filled out");
		return false;
	}
	if (parseFloat(z) < 0) {
		alert("Duration must contain positive days");
		return false;
	}
	if (i == "") {
		alert("please add image");
		return false;
	}
	if (j.length < 10) {
		alert("please enter more than 10 words");
		return false;
	}


}

function validationForm2() {
	let k = document.getElementsByName("rate")[0].value;
	let g = document.getElementsByName("package_type")[0].value;
	let h = document.getElementsByName("code")[0].value;

	if (k == "") {
		alert("please discount rate");
		return false;
	}
	if (g == "") {
		alert("please select tour type");
		return false;
	}
	if (h == "") {
		alert("please enter code");
		return false;
	}
	if (!code.match(/^(?=.*[0-9])(?=.*[a-zA-Z])[a-zA-Z0-9]+$/)) {
		alert("code must contain at least one number and only letters");
		return false;
	}

}
let loadMorebtn = document.querySelector('.packages .load-more .btn');
let currentItem =3;

loadMorebtn.onclick =() =>{
  let boxes =[...document.querySelectorAll('.packages .box-container .box')];
  for(var i=currentItem; i<currentItem + 3;i++){
    boxes[i].style.display = 'inline-block';
  };
  currentItem +=3;
  if(currentItem >= boxes.length){
    loadMorebtn.style.display = 'none';
  }
}
function myFunction() {
  let text = "Do you want Delete Package.";
  if (confirm(text) == true) {
    
  } else {
    
  }
  document.getElementById("demo").innerHTML = text;
}

function openform(){
    document.getElementById("booking").style.display ="block";
}
function closeform(){
    document.getElementById("booking").style.display ="none";
}
