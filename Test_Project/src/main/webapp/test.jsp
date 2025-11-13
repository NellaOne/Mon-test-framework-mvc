<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Test JSP - Sprint 4-bis</title>
    <style>
        body {
            font-family: 'Segoe UI', Arial, sans-serif;
            margin: 0;
            padding: 40px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        }
        .container {
            background: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.3);
            max-width: 800px;
            margin: 0 auto;
        }
        h1 {
            color: #2c3e50;
            border-bottom: 3px solid #667eea;
            padding-bottom: 15px;
        }
        .success {
            background: #d4edda;
            color: #155724;
            padding: 20px;
            border-radius: 8px;
            border-left: 5px solid #28a745;
            margin: 20px 0;
        }
        .info {
            background: #d1ecf1;
            color: #0c5460;
            padding: 15px;
            border-radius: 8px;
            margin: 15px 0;
        }
        .badge {
            display: inline-block;
            padding: 8px 15px;
            background: #667eea;
            color: white;
            border-radius: 20px;
            font-size: 14px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>✅ Sprint 4-bis - ModelView Fonctionne !</h1>
        
        <div class="success">
            <h2 style="margin-top: 0;">🎉 Succès !</h2>
            <p>Cette page JSP a été affichée via <strong>ModelView</strong> et <strong>RequestDispatcher</strong>.</p>
        </div>
        
        <div class="info">
            <h3>📋 Informations</h3>
            <p><strong>Fichier:</strong> test.jsp</p>
            <p><strong>Méthode contrôleur:</strong> Test2.view()</p>
            <p><strong>Type de retour:</strong> <span class="badge">ModelView</span></p>
        </div>
        
        <div class="info">
            <h3>✅ Vérifications Sprint 4-bis</h3>
            <ul>
                <li>✅ Classe ModelView créée dans le Framework</li>
                <li>✅ Méthode retourne ModelView avec setView("test.jsp")</li>
                <li>✅ FrontServlet détecte le type ModelView</li>
                <li>✅ FrontServlet appelle getView()</li>
                <li>✅ RequestDispatcher.forward() vers la JSP</li>
                <li>✅ Cette page s'affiche correctement</li>
            </ul>
        </div>
        
        <div style="margin-top: 30px; padding: 15px; background: #fff3cd; border-radius: 8px;">
            <p style="margin: 0; color: #856404;">
                <strong>🎯 Sprint 4-bis Réussi !</strong> Le framework gère maintenant les vues JSP via ModelView.
            </p>
        </div>
    </div>
</body>
</html>