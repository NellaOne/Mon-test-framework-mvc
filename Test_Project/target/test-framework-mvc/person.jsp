<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Personne - Sprint 5</title>
    <style>
        body { font-family: Arial; margin: 40px; background: #e8f5e9; }
        .container { background: white; padding: 30px; border-radius: 10px; max-width: 600px; margin: 0 auto; }
        h1 { color: #27ae60; }
        .info { margin: 10px 0; padding: 10px; background: #d4edda; border-radius: 5px; }
    </style>
</head>
<body>
    <div class="container">
        <h1>👤 Informations Personne</h1>
        
        <div class="info"><strong>Nom :</strong> ${nom}</div>
        <div class="info"><strong>Âge :</strong> ${age} ans</div>
        <div class="info"><strong>Ville :</strong> ${ville}</div>
        <div class="info"><strong>Profession :</strong> ${profession}</div>
        
        <p style="color: #27ae60; margin-top: 20px;">
            ✅ Sprint 5 : Données envoyées via addObject()
        </p>
    </div>
</body>
</html>