<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Département Mis à Jour - Sprint 6-bis</title>
    <style>
        body { font-family: Arial; margin: 40px; background: #e8f5e9; }
        .container { background: white; padding: 30px; border-radius: 10px; max-width: 600px; margin: 0 auto; }
        h1 { color: #27ae60; }
        .success { background: #d4edda; color: #155724; padding: 20px; border-radius: 8px; margin: 20px 0; border-left: 5px solid #28a745; }
        .data { background: #f8f9fa; padding: 15px; border-radius: 8px; margin: 15px 0; }
        .badge { background: #d63384; color: white; padding: 5px 10px; border-radius: 12px; display: inline-block; margin: 5px 0; }
    </style>
</head>
<body>
    <div class="container">
        <h1>✅ Département Mis à Jour</h1>
        
        <div class="success">
            <h2 style="margin-top: 0;">${message}</h2>
            <p><span class="badge">Sprint 6-bis</span> Mélange @RequestParam + injection normale</p>
        </div>
        
        <div class="data">
            <h3>📋 Données Mises à Jour</h3>
            <p><strong>ID :</strong> ${id}</p>
            <p><strong>Nom :</strong> ${nom}</p>
            <p><strong>Nouvelle Localisation :</strong> ${localisation}</p>
        </div>
        
        <div style="background: #fff3cd; padding: 15px; border-radius: 8px; margin-top: 20px;">
            <h4>✅ Vérifications Sprint 6-bis (Mixte)</h4>
            <ul>
                <li>✅ <code>dept_id</code> → <code>id</code> via @RequestParam</li>
                <li>✅ <code>nom</code> → <code>nom</code> via injection normale</li>
                <li>✅ <code>new_location</code> → <code>localisation</code> via @RequestParam</li>
            </ul>
            <p><strong>Les deux méthodes fonctionnent ensemble !</strong></p>
        </div>
    </div>
</body>
</html>