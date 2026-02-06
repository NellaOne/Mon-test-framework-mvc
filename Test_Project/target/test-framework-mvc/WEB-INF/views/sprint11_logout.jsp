<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sprint 11 - Déconnexion</title>
    <style>
        body{font-family:Arial;margin:40px;background:#e74c3c;min-height:100vh;display:flex;align-items:center;justify-content:center}
        .box{background:white;padding:40px;border-radius:10px;text-align:center;box-shadow:0 10px 40px rgba(0,0,0,0.3);max-width:400px}
        h1{color:#e74c3c;margin:0 0 20px 0}
        .icon{font-size:60px;margin-bottom:20px}
        .btn{display:inline-block;padding:12px 30px;background:#e74c3c;color:white;text-decoration:none;border-radius:5px;margin-top:20px;font-weight:bold}
        .btn:hover{background:#c0392b}
    </style>
</head>
<body>
    <div class="box">
        <div class="icon"></div>
        <h1>Déconnexion Réussie</h1>
        <p>Votre session a été détruite.</p>
        <a href="/test-framework-mvc/sprint11/login" class="btn"> Se reconnecter</a>
    </div>
</body>
</html>