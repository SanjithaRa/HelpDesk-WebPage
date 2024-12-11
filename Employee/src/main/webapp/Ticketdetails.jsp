<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="home1.css">
<meta charset="UTF-8">
<style>
.table-container {
    width: 90%;
    margin: auto;
    background: #ffffff;
    padding: 20px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
    margin-top: 20px;
}

.styled-table {
    width: 100%;
    border-collapse: collapse;
    margin: 25px 0;
    font-size: 14px;
    text-align: center;
}

.styled-table th, .styled-table td {
    padding: 12px 15px;
}

.styled-table th {
    background-color: #3c0055; /* Dark purple mix with black */
    color: #ffffff; 
    text-transform: uppercase;
    height: 30px;
}

.styled-table tr {
    border-bottom: 1px solid #dddddd;
}

.styled-table tr:nth-of-type(even) {
    background-color: #f3f3f3;
}

.styled-table tr:last-of-type {
    border-bottom: 2px solid #3c0055;
}

.styled-table tr:hover {
    background-color: #f1f1f1;
    cursor: pointer;
}

.update-button, .delete-button {
    text-decoration: none;
    padding: 8px 12px;
    color: #ffffff;
    border-radius: 4px;
}

.update-button {
    background-color: rgb(0, 0, 0);
    border-color: rgb(0, 0, 0);
}

.delete-button {
    background-color: #9f1409; /* Red */
    border-color: #9f1409;
}

.action-button:hover {
    opacity: 0.8;
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

<center>
<div class="table-container">

        <table border="1" class="styled-table">
            <tr>
                <th>Ticket ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Telephone Number</th>
                <th>Submitted Date</th>
                <th>Concern / Inquiry</th>
                <th>Update</th>
                <th>Delete</th>
            </tr>	

            <c:forEach var="ticket" items="${ticketdetails}">
                <tr>
                    <td>${ticket.tid}</td>
                    <td>${ticket.name}</td>
                    <td>${ticket.email}</td>
                    <td>${ticket.phone}</td>
                    <td>${ticket.date}</td>
                    <td>${ticket.concern}</td>
                    <td>
                        <c:url value="updateTicket.jsp" var="ticketupdate">
                            <c:param name="tid" value="${ticket.tid}"/>
                            <c:param name="name" value="${ticket.name}"/>
                            <c:param name="email" value="${ticket.email}"/>
                            <c:param name="phone" value="${ticket.phone}"/>
                            <c:param name="date" value="${ticket.date}"/>
                            <c:param name="concern" value="${ticket.concern}"/>
                        </c:url>
                        <a href="${ticketupdate}">
                            <input type="button" name="update" value="Update Details" class="update-button">
                        </a>
                    </td>
                    <td>
                        <c:url value="deleteTicket.jsp" var="ticketdelete">
                            <c:param name="tid" value="${ticket.tid}"/>
                            <c:param name="name" value="${ticket.name}"/>
                            <c:param name="email" value="${ticket.email}"/>
                            <c:param name="phone" value="${ticket.phone}"/>
                            <c:param name="date" value="${ticket.date}"/>
                            <c:param name="concern" value="${ticket.concern}"/>
                        </c:url>
                        <a href="${ticketdelete}">
                            <input type="button" name="delete" value="Delete Details" class="delete-button">
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </center>

</body>
</html>