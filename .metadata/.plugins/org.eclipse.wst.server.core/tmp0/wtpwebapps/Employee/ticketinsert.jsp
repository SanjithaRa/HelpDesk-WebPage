<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="home1.css">
<style>


body {
    font-family: Arial, sans-serif;
    background-color: #f5f5f5;
    margin: 0;
    padding: 0;
}


.form-container {
    width: 450px;
    margin: 50px auto;
    padding: 20px;
    background-color: #ffffff;
    border: 1px solid #ddd;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}


h2 {
    text-align: center;
    color: #333;
    margin-bottom: 30px;
    padding-top: 10px;
    padding-bottom: 10px;
    padding-left: 3px;
    padding-right: 3px;
    background-color: #2d004d;
    color: white;
    border-radius: 5px;
}

label {
    display: block;
    margin: 10px 0 5px;
    font-weight: bold;
    color: #555;
}


input[type="text"], input[type="date"], textarea{
    width: 100%;
    padding: 10px;
    margin: 5px 0 15px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    font-size: 16px;
}


.submitbtn{
    width: 70%;
    padding: 12px;
    background-color:#000; 
    color: white;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
    transition: background-color 0.3s ease;
}


.submitbtn:hover {
    background-color:#333; 
} 

</style>
<title>Insert title here</title>
<script>
function validateForm(event) {
    var phoneInput = document.forms["ticketForm"]["tphone"].value;
    var errorMessage = document.getElementById("error-message");

    // Clear previous error message
    errorMessage.innerText = '';

    // Check if phone number is 10 digits
    if (phoneInput.length !== 10 || isNaN(phoneInput)) {
        event.preventDefault(); // Prevent form submission
        errorMessage.innerText = 'Telephone number should be 10 digits.';
        errorMessage.style.color = 'red';
    }
    
    
    var email = document.getElementById("email").value.trim();
	   var errorEmailMessage =  document.getElementById("email-error");
	   
	   var emailpattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
	   
	   
	   if (!emailpattern.test(email)) {
		   errorEmailMessage.textContent = "*Please enter a valid email address.";
		   errorEmailMessage.style.color = 'red';
           return false;
    } else {
 	   errorEmailMessage.textContent = "";
    }
}
</script>
</head>
<body>

<header>
        <h1 class="home-h1">CARE CONNECT</h1><br>
        <nav>
            <ul>
            
               <b> <li><a href="home.jsp">Home</a></li>
                <li><a href="#">Submit a Ticket</a></li>
                <li><a href="#">FAQs</a></li>
                <li><a href="#">Contact Us</a></li></b> 
             
             
                
            </ul>
        </nav>
    </header>

    <div class="home-button-container">
      
       <a href="#"><button class="b1"><b>Work With Us</b> </button></a>
        <a href="#"><button class="b1"><b>Contact Expert</b></button></a>
    </div>
    
<div class="form-container">
<h2>Ticket Details</h2>

<form name="ticketForm" action="insertticket" method="post" onsubmit="validateForm(event)">

    <label>Name :</label>
    <input type="text" name="tname" required placeholder="Enter Name">

    <label>Email :</label>
    <input type="text" name="temail" id="email" required/>
    <span id="email-error"></span> <br>
    
    <label>Telephone :</label>
    <input type="text" name="tphone" required/>
    
    <div id="error-message"></div>

    <label>Date :</label>
    <input type="date" name="date" required/>

    <label>Concern :</label>
    <input type="text" name="concern" required/>

    <center><b><button type="submit" class="submitbtn">Submit</button></b></center>

</form>
</div>
</body>
</html>