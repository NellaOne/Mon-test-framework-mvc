<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>${titre}</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #3498db 0%, #2980b9 100%);
            margin: 0;
            padding: 40px;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        .container {
            background: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.2);
            max-width: 600px;
            width: 100%;
        }
        h1 {
            color: #3498db;
            text-align: center;
            margin-bottom: 10px;
        }
        .badge {
            display: inline-block;
            background: #3498db;
            color: white;
            padding: 5px 15px;
            border-radius: 20px;
            font-size: 14px;
            font-weight: bold;
            margin-bottom: 20px;
        }
        .success {
            background: #d4edda;
            padding: 20px;
            border-radius: 8px;
            border-left: 4px solid #27ae60;
            margin: 20px 0;
        }
        .data-card {
            background: #f8f9fa;
            padding: 20px;
            border-radius: 8px;
            margin: 20px 0;
        }
        .data-row {
            display: flex;
            justify-content: space-between;
            padding: 10px 0;
            border-bottom: 1px solid #e0e0e0;
        }
        .data-row:last-child {
            border-bottom: none;
        }
        .label {
            font-weight: bold;
            color: #555;
        }
        .value {
            color: #333;
        }
        a {
            display: inline-block;
            margin-top: 20px;
            padding: 12px 30px;
            background: #3498db;
            color: white;
            text-decoration: none;
            border-radius: 8px;
            font-weight: bold;
            transition: background 0.3s;
        }
        a:hover {
            background: #2980b9;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>✅ ${titre}</h1>
        <span class="badge">Sprint 7 - @PostMapping</span>
        
        <div class="success">
            <h2 style="margin-top: 0;">🎉 ${message}</h2>
            <p>Les données ont été traitées par la méthode <strong>submitUserForm()</strong> 
               via l'annotation <strong>@PostMapping</strong>.</p>
        </div>

        <h3>📋 Données Reçues</h3>
        <div class="data-card">
            <div class="data-row">
                <span class="label">Nom :</span>
                <span class="value">${nom}</span>
            </div>
            <div class="data-row">
                <span class="label">Email :</span>
                <span class="value">${email}</span>
            </div>
            <div class="data-row">
                <span class="label">Âge :</span>
                <span class="value">${age} ans</span>
            </div>
        </div>

        <div style="background: #e3f2fd; padding: 15px; border-radius: 8px; margin-top: 20px;">
            <h4 style="margin-top: 0;">✅ Vérifications Sprint 7</h4>
            <ul style="margin: 10px 0;">
                <li>✅ URL identique : <code>/user/form</code></li>
                <li>✅ GET → Affiche le formulaire</li>
                <li>✅ POST → Traite les données</li>
                <li>✅ Deux méthodes différentes pour la même URL</li>
                <li>✅ Injection automatique des paramètres</li>
            </ul>
        </div>

        <a href="/test-framework-mvc/user/form">← Retour au formulaire</a>
    </div>
</body>
</html>