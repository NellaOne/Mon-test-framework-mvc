<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>${titre}</title>
    <style>
        body { font-family: Arial; background: #3498db; padding: 40px; }
        .container { background: white; padding: 30px; border-radius: 10px; max-width: 600px; margin: 0 auto; }
        h1 { color: #3498db; }
        .badge { background: #3498db; color: white; padding: 5px 15px; border-radius: 20px; }
    </style>
</head>
<body>
    <div class="container">
        <h1>✅ ${titre}</h1>
        <span class="badge">POST</span>
        <p><strong>${message}</strong></p>
        <p><strong>Nom :</strong> ${nomProduit}</p>
        <p><strong>Prix :</strong> ${prix} Ar</p>
    </div>
</body>
</html>