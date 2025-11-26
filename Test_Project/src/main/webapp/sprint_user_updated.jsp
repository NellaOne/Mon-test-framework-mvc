<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>${titre}</title>
    <style>
        body { font-family: Arial; background: #e67e22; padding: 40px; }
        .container { background: white; padding: 30px; border-radius: 10px; max-width: 600px; margin: 0 auto; }
        h1 { color: #e67e22; }
        .badge { background: #3498db; color: white; padding: 5px 15px; border-radius: 20px; }
    </style>
</head>
<body>
    <div class="container">
        <h1>✏️ ${titre}</h1>
        <span class="badge">POST</span>
        <p><strong>User ID :</strong> ${userId}</p>
        <p><strong>Nouveau Nom :</strong> ${nom}</p>
        <p><strong>Action :</strong> ${action}</p>
        <p>Mise à jour via URL dynamique avec POST.</p>
    </div>
</body>
</html>