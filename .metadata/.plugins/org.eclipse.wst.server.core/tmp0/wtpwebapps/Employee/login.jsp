<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .login-container {
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        padding: 20px;
        width: 300px;
        text-align: center;
    }
    .login-container h2 {
        color: #4A4A4A;
        margin-bottom: 20px;
    }
    .login-container input[type="text"],
    .login-container input[type="password"] {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }
    .login-container input[type="submit"] {
        background-color: #4b0082;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        width: 100%;
    }
    .login-container input[type="submit"]:hover {
        background-color:#800080;
    }
    .login-container .error-message {
        color: red;
        margin-bottom: 15px;
    }
</style>

</head>
<body>

<div class="login-container">
    <h2>Login</h2>

   

    <form action="login" method="post">
        <input type="text" name="uid" placeholder="User name" required><br>
        <input type="password" name="pass" placeholder="Password" required><br>
        <input type="submit" name="submit" value="Login">
    </form>
</div>

</body>
</html>