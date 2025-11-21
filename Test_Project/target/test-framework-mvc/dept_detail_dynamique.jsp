<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Détail Département - Sprint 3-bis</title>
    <style>
        body { font-family: Arial; margin: 40px; background: #e8f5e9; }
        .container { background: white; padding: 30px; border-radius: 10px; max-width: 700px; margin: 0 auto; }
        h1 { color: #27ae60; }
        .badge { background: #27ae60; color: white; padding: 8px 15px; border-radius: 12px; }
    </style>
</head>
<body>
    <div class="container">
        <h1>🏢 ${message}</h1>
        
        <p><span class="badge">Sprint 3-bis</span></p>
        
        <div style="background: #d4edda; padding: 20px; border-radius: 8px; margin: 20px 0;">
            <h3>✅ URL Dynamique Reconnue</h3>
            <p><strong>Pattern :</strong> <code>${urlPattern}</code></p>
            <p><strong>Valeur id actuelle :</strong> ${idActuel == null ? 'null (Sprint 3-bis)' : idActuel}</p>
        </div>
        
        <p>Exemples d'URLs qui matchent :</p>
        <ul>
            <li>/dept/1</li>
            <li>/dept/25</li>
            <li>/dept/999</li>
        </ul>
    </div>
</body>
</html>