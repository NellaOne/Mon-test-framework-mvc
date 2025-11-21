<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Détail Produit - Sprint 3-bis</title>
    <style>
        body { font-family: Arial; margin: 40px; background: #fff3e0; }
        .container { background: white; padding: 30px; border-radius: 10px; max-width: 700px; margin: 0 auto; }
        h1 { color: #f57c00; }
    </style>
</head>
<body>
    <div class="container">
        <h1>📦 ${message}</h1>
        <p><strong>Product ID :</strong> ${productId == null ? 'null (Sprint 3-bis)' : productId}</p>
        <p>Sprint 3-bis : URL dynamique <code>/product/{id}</code> fonctionne !</p>
    </div>
</body>
</html>
