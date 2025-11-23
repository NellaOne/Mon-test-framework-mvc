<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Résultat - Sprint 6</title>
    <style>
        body { font-family: Arial; margin: 40px; background: #e8f5e9; }
        .container { background: white; padding: 40px; border-radius: 15px; max-width: 700px; margin: 0 auto; }
        h1 { color: #27ae60; }
        .success { background: #d4edda; color: #155724; padding: 20px; border-radius: 8px; margin: 20px 0; border-left: 5px solid #28a745; }
        .data-grid { display: grid; grid-template-columns: 150px 1fr; gap: 15px; margin: 20px 0; }
        .label { font-weight: bold; color: #495057; }
        .value { background: #f8f9fa; padding: 8px 12px; border-radius: 5px; }
        .badge { background: #28a745; color: white; padding: 5px 10px; border-radius: 12px; display: inline-block; }
    </style>
</head>
<body>
    <div class="container">
        <h1>✅ ${titre}</h1>
        
        <div class="success">
            <h2 style="margin-top: 0;">${message}</h2>
            <p><span class="badge">Sprint 6</span> Injection automatique des paramètres HTTP</p>
        </div>
        
        <h3>📋 Données Reçues</h3>
        <div class="data-grid">
            <div class="label">ID :</div>
            <div class="value">${id == null ? 'Non fourni' : id}</div>
            
            <div class="label">Nom :</div>
            <div class="value">${nom == null ? 'Non fourni' : nom}</div>
            
            <div class="label">Âge :</div>
            <div class="value">${age == null ? 'Non fourni' : age} ans</div>
            
            <div class="label">Ville :</div>
            <div class="value">${ville == null ? 'Non fourni' : ville}</div>
        </div>
        
        <div style="margin-top: 30px; padding: 15px; background: #e7f3ff; border-radius: 8px;">
            <h4>✅ Sprint 6 Validé !</h4>
            <ul>
                <li>✅ Formulaire soumis vers <code>/form/save</code></li>
                <li>✅ Paramètres HTTP récupérés automatiquement</li>
                <li>✅ Injection dans les arguments de la méthode</li>
                <li>✅ Conversion des types (String, Integer)</li>
                <li>✅ Données affichées dans la JSP</li>
            </ul>
        </div>
        
        <div style="margin-top: 20px;">
            <a href="/test-framework-mvc/form/add" style="color: #3498db; text-decoration: none; font-weight: bold;">← Retour au formulaire</a>
        </div>
    </div>
</body>
</html>
