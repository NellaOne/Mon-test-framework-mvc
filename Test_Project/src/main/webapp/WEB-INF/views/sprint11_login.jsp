<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sprint 11 - Login</title>
    <style>
        body{font-family:Arial;margin:40px;background:linear-gradient(135deg, #667eea 0%, #764ba2 100%);min-height:100vh;display:flex;align-items:center;justify-content:center}
        .box{background:white;padding:40px;border-radius:10px;box-shadow:0 10px 40px rgba(0,0,0,0.3);max-width:400px;width:100%}
        h1{color:#667eea;margin:0 0 30px 0;text-align:center}
        .form-group{margin:20px 0}
        label{display:block;font-weight:bold;margin-bottom:5px;color:#333}
        input{width:100%;padding:12px;border:2px solid #ddd;border-radius:5px;box-sizing:border-box;font-size:14px}
        input:focus{border-color:#667eea;outline:none}
        button{width:100%;background:linear-gradient(135deg, #667eea 0%, #764ba2 100%);color:white;padding:15px;border:none;border-radius:5px;cursor:pointer;font-size:16px;font-weight:bold;margin-top:10px}
        button:hover{transform:translateY(-2px);box-shadow:0 4px 15px rgba(102,126,234,0.4)}
        .error{background:#f8d7da;color:#721c24;padding:10px;border-radius:5px;margin-bottom:20px;text-align:center}
        .info{background:#d1ecf1;color:#0c5460;padding:10px;border-radius:5px;margin-bottom:20px;text-align:center;font-size:14px}
    </style>
</head>
<body>
    <div class="box">
        <h1> Sprint 11 - Login</h1>
        
        <% if (request.getAttribute("error") != null) { %>
        <div class="error">
             ${error}
        </div>
        <% } %>
        
        <div class="info">
            <strong>Identifiants de test :</strong><br>
            Username: <code>admin</code><br>
            Password: <code>admin123</code>
        </div>
        
        <form action="/test-framework-mvc/sprint11/login" method="POST">
            <div class="form-group">
                <label>Username :</label>
                <input type="text" name="username" required autofocus>
            </div>
            
            <div class="form-group">
                <label>Password :</label>
                <input type="password" name="password" required>
            </div>
            
            <button type="submit">Se connecter</button>
        </form>
    </div>
</body>
</html>