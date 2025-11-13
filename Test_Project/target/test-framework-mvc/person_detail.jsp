<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Détail Personne - Sprint 5</title>
    <style>
        body { font-family: Arial; margin: 40px; background: #f3e5f5; }
        .container { background: white; padding: 30px; border-radius: 10px; max-width: 600px; margin: 0 auto; }
        h1 { color: #9c27b0; }
    </style>
</head>
<body>
    <div class="container">
        <h1>${titre}</h1>
        
        <div style="border: 2px solid #9c27b0; padding: 20px; border-radius: 8px;">
            <h2>${person.nom}</h2>
            <p><strong>Âge :</strong> ${person.age} ans</p>
            <p><strong>Ville :</strong> ${person.ville}</p>
        </div>
    </div>
</body>
</html>
