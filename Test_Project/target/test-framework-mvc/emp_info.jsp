<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Info Employé - Sprint 5</title>
    <style>
        body { font-family: Arial; margin: 40px; background: #f5f5f5; }
        .container { background: white; padding: 30px; border-radius: 10px; max-width: 600px; margin: 0 auto; }
        h1 { color: #2c3e50; border-bottom: 3px solid #3498db; padding-bottom: 10px; }
        .info { margin: 15px 0; padding: 10px; background: #ecf0f1; border-radius: 5px; }
        .label { font-weight: bold; color: #34495e; }
        .value { color: #2980b9; }
    </style>
</head>
<body>
    <div class="container">
        <h1>✅ ${titre}</h1>
        
        <!-- ✅ Accès aux données simples avec ${} -->
        <div class="info">
            <span class="label">Nom :</span>
            <span class="value">${nomEmploye}</span>
        </div>
        
        <div class="info">
            <span class="label">Âge :</span>
            <span class="value">${age} ans</span>
        </div>
        
        <div class="info">
            <span class="label">Poste :</span>
            <span class="value">${poste}</span>
        </div>
        
        <div class="info">
            <span class="label">Salaire :</span>
            <span class="value">${salaire} Ar</span>
        </div>
        
        <p style="margin-top: 20px; color: #27ae60;">
            <strong>🎉 Sprint 5 : Données envoyées depuis le contrôleur !</strong>
        </p>
    </div>
</body>
</html>