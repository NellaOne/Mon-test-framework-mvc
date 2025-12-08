<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>${titre}</title>
    <style>
        body{font-family:Arial;margin:40px;background:#667eea}
        .box{background:white;padding:30px;border-radius:10px;max-width:600px;margin:0 auto}
        h1{color:#667eea}
        .badge{background:#27ae60;color:white;padding:5px 15px;border-radius:20px;display:inline-block}
    </style>
</head>
<body>
    <div class="box">
        <h1>✅ ${titre}</h1>
        <span class="badge">Sprint 4-bis</span>
        <p>${message}</p>
        <p>Cette page JSP est affichée via <strong>ModelView</strong></p>
    </div>
</body>
</html>