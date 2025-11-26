<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>${titre}</title>
    <style>
        body { font-family: Arial; background: #27ae60; padding: 40px; }
        .container { background: white; padding: 30px; border-radius: 10px; max-width: 600px; margin: 0 auto; }
        h1 { color: #27ae60; }
        .badge { background: #27ae60; color: white; padding: 5px 15px; border-radius: 20px; }
    </style>
</head>
<body>
    <div class="container">
        <h1>📦 ${titre}</h1>
        <span class="badge">GET</span>
        <p><strong>Action :</strong> ${action}</p>
        <p>Cette page affiche la liste des produits (GET).</p>
    </div>
</body>
</html>