<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Département Créé - Sprint 6-bis</title>
    <style>
        body { font-family: Arial; margin: 40px; background: #e8f5e9; }
        .container { background: white; padding: 40px; border-radius: 15px; max-width: 700px; margin: 0 auto; }
        h1 { color: #27ae60; }
        .success { background: #d4edda; color: #155724; padding: 20px; border-radius: 8px; margin: 20px 0; border-left: 5px solid #28a745; }
        .badge { background: #d63384; color: white; padding: 5px 10px; border-radius: 12px; display: inline-block; }
    </style>
</head>
<body>
    <div class="container">
        <h1>✅ ${titre}</h1>
        
        <div class="success">
            <h2 style="margin-top: 0;">${message}</h2>
            <p><span class="badge">Sprint 6-bis</span> @RequestParam avec noms différents</p>
        </div>
        
        <h3>📋 Données Créées</h3>
        <p><strong>ID :</strong> ${id}</p>
        <p><strong>Nom :</strong> ${nom}</p>
        <p><strong>Localisation :</strong> ${localisation}</p>
        <p><strong>Employés :</strong> ${nombreEmployes}</p>
        
        <div style="margin-top: 30px; padding: 15px; background: #fff3cd; border-radius: 8px;">
            <h4>✅ Vérifications Sprint 6-bis</h4>
            <ul>
                <li>✅ <code>departement_id</code> → <code>id</code></li>
                <li>✅ <code>departement_nom</code> → <code>nom</code></li>
                <li>✅ <code>dept_localisation</code> → <code>localisation</code></li>
                <li>✅ <code>nb_employes</code> → <code>nombreEmployes</code></li>
            </ul>
        </div>
        
        <p><a href="/test-framework-mvc/dept/form/create">← Créer un autre</a></p>
    </div>
</body>
</html>