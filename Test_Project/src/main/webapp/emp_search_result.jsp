<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Résultat Recherche - Sprint 6-bis</title>
    <style>
        body { font-family: Arial; margin: 40px; background: #e3f2fd; }
        .container { background: white; padding: 30px; border-radius: 10px; max-width: 600px; margin: 0 auto; }
        h1 { color: #1976d2; }
        .info { background: #d1ecf1; padding: 15px; border-radius: 8px; margin: 15px 0; }
    </style>
</head>
<body>
    <div class="container">
        <h1>📋 ${message}</h1>
        
        <div class="info">
            <h3>Critères de Recherche</h3>
            <p><strong>Nom :</strong> ${nomRecherche == null ? 'Non fourni' : nomRecherche}</p>
            <p><strong>Âge Min :</strong> ${ageMin == null ? 'Non fourni' : ageMin}</p>
            <p><strong>Âge Max :</strong> ${ageMax == null ? 'Non fourni' : ageMax}</p>
        </div>
        
        <p>✅ Sprint 6-bis : @RequestParam avec noms différents !</p>
    </div>
</body>
</html>