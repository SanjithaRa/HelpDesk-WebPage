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
    background-color: rgb(235,253,221); 
    color: black; 
    font-family: Arial, sans-serif; 
    line-height: 1.6; 
    padding: 20px; 
}



h1 {
    color: #070707;
}

h2 {
    color:	#f3e7bc; 
}

h4 {
    color:	white; 
}


p {
    color: #0c0c0c; 
}


section {
    margin-top: 20px; 
    background-color: #3b2b42; 
    border: 3px solid #2b2330;
    border-radius: 8px; 
    padding: 15px; 
}


.update-box {
    margin-top: 10px; 
    background-color:#C0C0C0; 
    padding: 10px;
    border-radius: 4px;
}


.support-box {
    margin-top: 10px; 
    background-color:#C0C0C0; 
    padding: 10px;
    border-radius: 4px;
}


.resources ul {
    list-style-type: none; 
    padding: 0; 
}

.resources li {
    margin-top: 5px; 
}


.testimonials {
    margin-top: 20px; 
}

blockquote {
    background-color:#C0C0C0; 
    padding: 10px; 
    border-left: 4px solid #191a2d; 
    margin: 10px 0; 
    color:black;
}


footer {
    text-align: center;
    padding: 20px;
    background: #333;
    color: #fff;
    position: relative;
    bottom: 0;
    width: 100%;
}


header {
    background: #333;
    color: #fff;
    padding: 20px 0;
    text-align: center;
    font-family: Arial, sans-serif;
}


.home-h1 {
    color: white;
}


nav {
    background-color: #FAFAD2;
    height: 34px;
}

nav ul {
    list-style-type: none;
    margin: 0;
    padding: 8px;
    text-align: center;
}

nav ul li {
    display: inline-block;
    margin: 0 15px;
}

nav ul li a {
    color: black;
    text-decoration: none;
    padding: 10px 15px;
}


.home-button {
    text-align: right;
    padding: 10px 20px;
    background-color:rgb(235,253,221);
}


.b1 {
    background-color: #555;
    font-size: 14px;
    padding: 10px 20px;
    border: none;
    color: #fff;
    cursor: pointer;
    margin-left: 10px;
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
                <li><a href="#">Contact Us</a></li>
                <li><a href="useraccount.jsp">UserAccount</a></li></b> 
             
             
                
            </ul>
        </nav>
    </header>

    <div class="home-button">
      
       <a href="employeeInsert.jsp"><button class="b1"><b>Work With Us</b> </button></a>
        <a href="appinsert.jsp"><button class="b1"><b>Contact Expert</b></button></a>
    </div>

<div class="content">
        <center><h1>Welcome to the Care Connect Help Desk</h1></center>
        <center>  <p><b>Your reliable partner in managing support requests and providing solutions.</b></p></center>
        
        <section class="overview">
            <h2>Overview</h2>
            <h4>At Care Connect, we are committed to providing exceptional support to our users. Whether you have a technical issue or need assistance navigating our platform, our team is here to help you. Below are various resources to help you get started.</h4>
        </section>

        <section class="updates">
            <h2>Recent Updates</h2>
            <div class="update-box">
                <h3>Update 1: System Maintenance</h3>
                <p>We will be performing scheduled maintenance on our systems on October 20th from 2 AM to 4 AM. During this time, the service may be temporarily unavailable.</p>
            </div>
            <div class="update-box">
                <h3>Update 2: New Features</h3>
                <p>Check out our new feature that allows you to track the status of your tickets in real-time! Available now in your account dashboard.</p>
            </div>
        </section>

        <section class="support-options">
            <h2>Support Options</h2>
            <div class="support-box">
                <h3>Live Chat Support</h3>
                <p>Our support team is available for live chat from 9 AM to 5 PM, Monday to Friday. Click the chat icon on the bottom right to get started.</p>
            </div>
            <div class="support-box">
                <h3>Email Support</h3>
                <p>If you prefer, you can reach us via email at . We aim to respond within 24 hours.</p>
            </div>
            <div class="support-box">
                <h3>Phone Support</h3>
                <p>For urgent issues, call our support line at (123) 456-7890, available 24/7.</p>
            </div>
        </section>

        <section class="resources">
            <h2>Helpful Resources</h2>
            <ul>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
            </ul>
        </section>

        <section class="testimonials">
            <h2>What Our Users Say</h2>
            <blockquote>
                <p>"The support team at Care Connect is amazing! They resolved my issue quickly and were very helpful." - Evgenia </p>
            </blockquote>
            <blockquote>
                <p>"I love the new ticket tracking feature. It's so easy to see the status of my requests!" - Maxwell Richardson</p>
            </blockquote>
        </section>
    </div><br><br>

    <footer>
        <h4>© 2024 Care Connect. All rights reserved.</h4>
    </footer>

</body>
</html>