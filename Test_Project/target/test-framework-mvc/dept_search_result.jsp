<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Recherche - Sprint 6</title>
    <style>
        body { font-family: Arial; margin: 40px; background: #e8f5e9; }
        .container { background: white; padding: 30px; border-radius: 10px; max-width: 600px; margin: 0 auto; }
        h1 { color: #27ae60; }
        .info { background: #d4edda; padding: 15px; border-radius: 8px; margin: 15px 0; }
    </style>
</head>
<body>
    <div class="container">
        <h1>🔍 ${message}</h1>
        
        <div class="info">
            <h3>Critères de Recherche</h3>
            <p><strong>Nom :</strong> ${nomRecherche == null ? 'Non fourni' : nomRecherche}</p>
            <p><strong>Localisation :</strong> ${localisationRecherche == null ? 'Non fourni' : localisationRecherche}</p>
        </div>
        
        <p>✅ Sprint 6 : Paramètres GET injectés automatiquement !</p>
    </div>
</body>
</html>