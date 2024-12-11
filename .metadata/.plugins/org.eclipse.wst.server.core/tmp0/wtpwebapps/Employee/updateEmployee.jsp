<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
    
<%
			String empid = request.getParameter("empid"); 
			String name=request.getParameter("name");
			String age = request.getParameter("age");
			String experience = request.getParameter("experience");
			String position = request.getParameter("position");
			String email = request.getParameter("email");
			String pnum = request.getParameter("pnum");
		%>
		
		

    <div class="form-container">
        <form action="update" method="post" onsubmit="return validateForm()">
        <h2>Update Employee Details</h2>
            Employee ID : <br/>
            <input type="text" name="empid" value="<%= empid%>" readonly><br>
            Full Name : <br/> 
            <input type="text" name="name" value="<%= name %>"><br>
            Age : <br/>
            <input type="text" name="age" id='eage' value="<%= age %>"><br>
            Experience :<br/>
            <input type="text" name="experience" value="<%= experience %>"><br>
            Desired position : <br/>
            <input type="text" name="position" value="<%= position %>"><br>
            Email : <br/>
            <input type="text" name="email" id='email' value="<%= email %>"><br>
             Phone number : <br/>
            <input type="text" name="pnum" id='num' value="<%= pnum %>"><br>
            
           <center> <input type="submit" name="submit" value="Update The Data" class="submitbtn"></center>
        </form>
    </div>
    
    
    <script>
    function validateForm() {
        const email = document.getElementById('email').value;
        const age = document.getElementById('eage').value;
        const phone = document.getElementById('num').value;

        // Validate Email
        if (!(email.includes("@") && email.includes("."))) {
            alert("Please enter a valid email address.");
            return false;
        }

        // Validate Age
        if (age < 18 || age > 65) {
            alert("Please enter a valid age between 18 and 65.");
            return false;
        }

        // Validate Phone Number
        if (!(phone.length === 10 && phone.startsWith("0"))) {
            alert("Phone number must start with '0' and contain exactly 10 digits.");
            return false;
        }

        return true;
    }
    </script>


</body>
</html>