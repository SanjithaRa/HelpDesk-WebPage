<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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

<meta charset="UTF-8">
<title>Insert feedback</title>
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
      <form action="insertfeed" method="post" onsubmit="return validateForm()">

          <h2> FeedBack Details</h2>

            	<label> <b> Name :</label>
            	<input type="text"  name="nm"  placeholder="Enter Your Name" required>
				<br>
                <label>Date :</label> 
                <input type="text"  name="dt" placeholder="Enter The Date" required/>
				<br>
                <label>Email :</label> 
                <input type="text"  name="em" id='em' placeholder="Enter Your E-mail" required/>
				<br>
                <label> Feedback Message :</label> </b>
                <input type="text"  name="fm" placeholder="Enter Your Feedback"  required/>
				<br><br>
   				<center><input type="Submit" name="insertbtn" value="Submit" class="submitbtn"></center>
</fieldset>

</form>
</div>
<script>
function validateForm() {
    const email = document.getElementById('em').value;
    
    

    // Validate Email
    if (!validateEmail(email)) {
        return false; // Stop form submission if email is invalid
    }

   
}

function validateEmail(email) {
    // Basic check for "@" and "."
    if (email.includes("@") && email.includes(".")) {
        return true; // Valid email
    } else {
        alert("Please enter a valid email address.");
        return false; // Invalid email
    }
}


</script>

</body>
</html>