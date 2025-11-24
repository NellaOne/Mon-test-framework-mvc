<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Résultat - Sprint 6-bis</title>
    <style>
        body { font-family: Arial; margin: 40px; background: #fff3e0; }
        .container { background: white; padding: 30px; border-radius: 10px; max-width: 600px; margin: 0 auto; }
        h1 { color: #f57c00; }
        .success { background: #fff3cd; padding: 15px; border-radius: 8px; margin: 15px 0; }
    </style>
</head>
<body>
    <div class="container">
        <h1>✅ ${titre}</h1>
        
        <div class="success">
            <p>${message}</p>
        </div>
        
        <h3>📋 Données Reçues</h3>
        <p><strong>ID :</strong> ${id}</p>
        <p><strong>Nom :</strong> ${nom}</p>
        <p><strong>Email :</strong> ${email}</p>
        <p><strong>Actif :</strong> ${actif}</p>
    </div>
</body>
</html>
