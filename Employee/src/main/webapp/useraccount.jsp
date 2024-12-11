<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="home1.css">
 <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
           
        }
        h1 {
            text-align: center;
            color: #4A4A4A;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #B2BEB5;
        }
        
        td
        {
         background-color:#FAFAD2;
        }
        th {
        
            width:200px;
            background-color:black;
            color: white;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        .button-container {
            text-align: center;
            margin-top: 20px;
        }
        .button {
            background-color: #555;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            font-weight: bold;
        }
        .button:hover {
            background-color: black;
        }
    </style>
    
</head>
<body>

  <header>
        <h1 class="home-h1">CARE CONNECT</h1><br>
        <nav>
            <ul>
            
               <b> <li><a href="home.jsp">Home</a></li>
                <li><a href="ticketinsert.jsp">Submit a Ticket</a></li>
                <li><a href="feedback_Insert.jsp">Feedback</a></li>
                <li><a href="#">Contact Us</a></li></b> 
             
             
                
            </ul>
        </nav>
    </header>

    <div class="home-button-container">
      
       <a href="employeeInsert.jsp"><button class="b1"><b>Work With Us</b> </button></a>
        <a href="appinsert.jsp"><button class="b1"><b>Contact Expert</b></button></a>
    </div>


<div class="container">
    <h1>User Account Details</h1><br>
    <table>
        <c:forEach var="cus" items="${cusDetails}">
            <tr>
                <th>Customer ID</th>
                <td>${cus.id}</td>
            </tr>
            <tr>
                <th>Customer Name</th>
                <td>${cus.name}</td>
            </tr>
            <tr>
                <th>Customer Email</th>
                <td>${cus.email}</td>
            </tr>
            <tr>
                <th>Customer Phone</th>
                <td>${cus.phone}</td>
            </tr>
            <tr>
                <th>Customer Username</th>
                <td>${cus.username}</td>
            </tr>
            <tr>
                <th>Customer Password</th>
                <td>${cus.password}</td>
            </tr>
        </c:forEach>
    </table>

    <div class="button-container">
        <a href="login.jsp" class="button">Logout</a>
       
    </div>
</div> <br><br>

 <footer>
        <p>&copy; 2024 CARE CONNECT. All rights reserved.</p>
    </footer>
</body>
</html>