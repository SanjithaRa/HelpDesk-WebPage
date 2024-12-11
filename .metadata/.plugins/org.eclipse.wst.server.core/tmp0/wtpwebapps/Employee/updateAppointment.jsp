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

.h2design {
    text-align: center;
    margin-bottom: 30px;
    padding-top: 10px;
    padding-bottom: 10px;
    padding-left: 3px;
    padding-right: 3px;
    background-color: #2c003e; 
    color: white;
    border-radius: 5px;
}


label {
    display: block;
    margin: 10px 0 5px;
    font-weight: bold;
    color: #555;
}


input[type="text"], input[type="date"], textarea, select {
    width: 100%;
    padding: 10px;
    margin: 5px 0 15px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    font-size: 16px;
}


select {
    width: 100%;
    padding: 10px;
    margin: 5px 0 15px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    font-size: 14px;
    background: #f9f9f9;
}


.buttonDesign {
    width: 70%;
    padding: 12px;
    background-color: #000; 
    color: white;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
    transition: background-color 0.3s ease;
}

.buttonDesign:hover {
    background-color: #333; 
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
			String appid = request.getParameter("appid"); 
			String name=request.getParameter("name");
			String email = request.getParameter("email");
			String expertname = request.getParameter("expertname");
			String date = request.getParameter("date");
			String concern = request.getParameter("concern");
		%>


    <div class="form-container">
    
        <h2 class="h2design">Update Appointment Details</h2> 
        
           <form action="updateapp" method="post">
           
               Appointment ID : 
              <input type="text" name="appid" value="<%= appid%>" readonly>
              
              Full Name : 
              <input type="text" name="name" value="<%= name %>">
              
              Email : 
              <input type="text" name="email" value="<%= email %>">
            
             <label>Expert Name :</label>
             <select name="expertname" required>
                 <option value="" disabled selected>Select an Expert</option>
                 <option value="Professor David Wang" <%= "Professor David Wang".equals(expertname) ? "selected" : "" %>>Professor David Wang</option>
                 <option value="Mr. Johnathan" <%= "Mr. Johnathan".equals(expertname) ? "selected" : "" %>>Mr. Johnathan</option>
                 <option value="Mrs. Emily" <%= "Mrs. Emily".equals(expertname) ? "selected" : "" %>>Mrs. Emily</option>
                 <option value="Mr. Perera" <%= "Mr. Perera".equals(expertname) ? "selected" : "" %>>Mr. Perera</option>
                 <option value="Mr. Gomez" <%= "Mr. Gomez".equals(expertname) ? "selected" : "" %>>Mr. Gomez</option>
            </select>
            
             Preferred Date : 
             <input type="date" name="date" value="<%= date %>">
             
             Concern :
             <textarea id="concern" name="concern" placeholder="Enter your concern here" rows="4"><%= concern %></textarea>
            
             <center> 
             
              <button type="submit" class="buttonDesign">Update The Record</button>
              
             </center>
           
        </form>
        
    </div>

</body>
</html>