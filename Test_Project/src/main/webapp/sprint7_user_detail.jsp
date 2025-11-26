<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>${titre}</title>
    <style>
        body { font-family: Arial; background: #9b59b6; padding: 40px; }
        .container { background: white; padding: 30px; border-radius: 10px; max-width: 600px; margin: 0 auto; }
        h1 { color: #9b59b6; }
        .badge { background: #27ae60; color: white; padding: 5px 15px; border-radius: 20px; }
    </style>
</head>
<body>
    <div class="container">
        <h1>👤 ${titre}</h1>
        <span class="badge">GET</span>
        <p><strong>User ID :</strong> ${userId}</p>
        <p><strong>Action :</strong> ${action}</p>
        <p>Affichage des détails via URL dynamique avec GET.</p>
    </div>
</body>
</html>