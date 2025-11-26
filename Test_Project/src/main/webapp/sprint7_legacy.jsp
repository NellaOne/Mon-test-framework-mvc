<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>${titre}</title>
    <style>
        body { font-family: Arial; background: #95a5a6; padding: 40px; }
        .container { background: white; padding: 30px; border-radius: 10px; max-width: 600px; margin: 0 auto; }
        h1 { color: #7f8c8d; }
        .badge { background: #95a5a6; color: white; padding: 5px 15px; border-radius: 20px; }
    </style>
</head>
<body>
    <div class="container">
        <h1>🔄 ${titre}</h1>
        <span class="badge">ALL (GET & POST)</span>
        <p><strong>${message}</strong></p>
        <p>Cette méthode utilise <code>@Url</code> et accepte toutes les méthodes HTTP.</p>
    </div>
</body>
</html>