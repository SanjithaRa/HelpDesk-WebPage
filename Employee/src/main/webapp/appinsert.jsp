<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
     <meta charset="UTF-8">
    
     <title>Insert title here</title>
     <link rel="stylesheet" href="home1.css">

 <style>
 
 body, h2, form, label, input, select, textarea, button {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        
        .form-wrapper {
            font-family: Arial, sans-serif;
            background-color: #f5f7fa;
            display: flex;
            justify-content: center;
            align-items: flex-start; 
            min-height: 100vh; 
            padding: 40px;
        }

        .form-container {
            background: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 400px;
            max-width: 100%;
        }

        .form-container h2 {
            text-align: center;
            margin-bottom: 20px;
            background-color: #2d004d;
            color: #fff;
            padding: 10px;
            border-radius: 5px;
            display: inline-block;
            width: calc(100% - 20px);
        }

        label {
            display: block;
            margin: 10px 0 5px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="date"],
        textarea,
        select {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background: #f9f9f9;
            transition: background 0.3s ease-in-out;
        }

        textarea {
            height: 100px;
            resize: none;
        }

        input[type="date"] {
            color: #400040;
            background: #eef2f7;
        }

        input:focus,
        textarea:focus {
            background: #e8f0fe;
            outline: none;
            border: 1px solid rgb(74, 0, 74);
        }

        button:hover {
            background: #333;
        }

.submit {
            width: 70%;
            padding: 10px;
            background: #000;
            border: none;
            border-radius: 5px;
            color: white;
            font-size: 17px;
            cursor: pointer;
            transition: background 0.3s ease-in-out;
        }

        .disabled-button {
            background-color: #808080;
            cursor: not-allowed;
            border: none;
            width: 70%;
            padding: 10px;
            border-radius: 5px;
            font-size: 17px;
            color: white;
        }

        .para {
            font-size: 14px;
            color: #2d004d;
        }

        .error-message {
            color: red;
            font-size: 12px;
            margin-top: -5px;
            display: block;
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

    
    <div class="form-wrapper">
  <div class="form-container">
      <h2>Appointment Form</h2>

        <form action="insertapp" method="post" onsubmit="return validateForm()">

            
                
            	<label>Full Name :</label>
            	<input type="text"  name="aname"  placeholder="Enter Full Name" required>

                <label>Email :</label>
                <input type="text"  name="aemail" id="email" required/>
                <span id="email-error" class="error-message"></span> <br>
                
                <label>Expert Name :</label>
                <select name="ename" required>
                    <option value="" disabled selected>Select an Expert</option>
                    <option value="Professor David Wang">Professor David Wang</option>
                    <option value="Mr. Johnathan">Mr. Johnathan</option>
                    <option value="Mrs. Emily">Mrs. Emily</option>
                    <option value="Mr. Perera">Mr. Perera</option>
                    <option value="Mr. Gomez">Mr. Gomez</option>
                </select>

                <label>Preferred Date :</label>
                <input type="date"  name="date"   required/>

                <label>Concern</label>
                <textarea id="concern" name="concern" placeholder="Enter your concern here" rows="4"></textarea>
                <span id="concern-error" class="error-message"></span> <br>
                
                <input type="checkbox" onclick="enablebutton()" id="checkbox" ><b><span class="para" > I agree to the privacy policy and consultation guidelines</span></b> <br><br>
                
                <center><b><button type="submit" id="submitBTN"  class="disabled-button" class="submit" disabled>Submit</button></b></center>

         </form>
   </div></div>


  <script>
    
     function validateForm() 
    {
    	  //validate the email
    	
    	  var email = document.getElementById("email").value.trim();
  	      var errorEmailMessage =  document.getElementById("email-error");
  	   
  	      var emailpattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  	   
  	   
  	       if (!emailpattern.test(email)) {
  		       errorEmailMessage.textContent = "*Please enter a valid email address.";
               return false;
           } else {
      	        errorEmailMessage.textContent = "";
           }
    	
    	
    	//validation for the context text length
    	   var concern = document.getElementById("concern").value.trim();
           var errorMessage = document.getElementById("concern-error");
        
            if (concern.length < 10 || concern.length > 50)
            {
                errorMessage.textContent = "*Concern should be between 10 and 50 characters long.";
                return false;
            } else
            {
                
            	errorMessage.textContent = "";
            }
            
            return true;
    }
    
    
    //enable the submit button of the form
     function enablebutton()
     {
         	if(document.getElementById("checkbox").checked)
     	   {
     		      document.getElementById("submitBTN").disabled=false;
                  document.getElementById("submitBTN").classList.remove("disabled-button");
                  document.getElementById("submitBTN").classList.add("submit");
     	   }
     	   else
     	   {
     		      document.getElementById("submitBTN").disabled=true;
                  document.getElementById("submitBTN").classList.add("disabled-button");
                  document.getElementById("submitBTN").classList.remove("submit");
     	   }
     	
     	
     }
  </script>


</body>
</html>