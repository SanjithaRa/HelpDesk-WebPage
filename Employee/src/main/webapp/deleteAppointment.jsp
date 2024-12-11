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
    background-color: #8b0000;
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
    background-color: #8b0000; 
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
        <h1 class="home-h1">CARE  CONNECT</h1>
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
        <a href="#"><button class="b1"><b>Work With Us</b></button></a>
        <a href="#"><button class="b1"><b>Contact Expert</b></button></a>
    </div>
    
  
       <%
          String appid = request.getParameter("appid");
          String name = request.getParameter("name");
          String email = request.getParameter("email");
          String expertname = request.getParameter("expertname");
          String date = request.getParameter("date");
          String concern = request.getParameter("concern");
       %>
        
     <div class="form-container">
        
        <h2>Delete the Appointment</h2> 
        
        <form action="deleteapp" method="post">
    
        
    	<label>Appointment ID : </label>
        <input type="text" name="appid" value="<%= appid %>" readonly>
        
        <label>Full Name : </label>
        <input type="text" name="name" value="<%= name %>" readonly >
        
        <label> Email :</label>
        <input type="text" name="email" value="<%= email %>" readonly >
        
        <label>Expert Name :</label>
        <input type="text" name="expertname" value="<%= expertname %>" readonly>
        
        <label>Preferred Date: </label>
        <input type="date" name="date" value="<%= date %>" readonly>
        
       <label> Concern : </label>
       <textarea id="concern" name="concern" rows="4"  readonly><%= concern %></textarea>
        
       <center>  <button type="submit" class="submitbtn">Delete The Record</button></center>
       
       </form>

    </div>

  </body>
</html>