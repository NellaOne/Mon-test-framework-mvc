<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Info Département - Sprint 5</title>
    <style>
        body { font-family: Arial; margin: 40px; background: #fce4ec; }
        .container { background: white; padding: 30px; border-radius: 10px; max-width: 600px; margin: 0 auto; }
        h1 { color: #c2185b; }
    </style>
</head>
<body>
    <div class="container">
        <h1>ℹ️ Informations Département</h1>
        
        <div style="border: 2px solid #c2185b; padding: 20px; border-radius: 8px; margin: 20px 0;">
            <h2>${departement.nom}</h2>
            <p><strong>ID :</strong> ${departement.id}</p>
            <p><strong>Localisation :</strong> ${departement.localisation}</p>
            <p><strong>Nombre d'employés :</strong> ${departement.nombreEmployes}</p>
            <p><strong>Responsable :</strong> ${responsable}</p>
            <p><strong>Budget :</strong> ${budget} Ar</p>
        </div>
    </div>
</body>
</html>