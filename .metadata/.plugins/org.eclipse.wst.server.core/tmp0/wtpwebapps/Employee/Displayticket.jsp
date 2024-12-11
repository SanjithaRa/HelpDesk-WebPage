<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="home1.css">

<style>


.message-box {
    margin: 100px auto;
    padding: 20px;
    width: 60%;
    height: 350px;
    background-color: #fffdd0; 
    color: #000000; 
    border: 5px solid #b0b0b0; 
    border-radius: 10px; 
    text-align: center;
    font-family: Arial, sans-serif;
    font-size: 18px;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
}


.message-box .table-link {
    color: #ffffff; 
    font-weight: bold;
    font-size: 16px;
    text-decoration: none;
    background-color: #003366;
    width: 220px;
    height: 50px;
    border: none;
    border-radius: 6px;
    display: inline-block;
    line-height: 50px;
    margin-top: 20px;
}

.message-box .table-link:hover {
    color: #ffffff;
    text-decoration: none;
    background-color: #4b0082;
    transition: background-color 0.3s; 
}

</style>

<title>Insert title here</title>
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

<div class="message-box">
<form action="viewticket" method="post">
            <h2>Operation handled Successfully</h2><br>
            <h4> Details are stored in the Ticket table. Do necessary modifications by clicking this button</h4>
            <h4>View and edit the details</h4><br>
            <input type="submit" class="table-link" name="viewbtn" value="View Ticket Table">
        </form>
        </div>
</body>
</html>