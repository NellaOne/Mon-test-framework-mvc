<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Département Enregistré</title>
    <style>
        body { font-family: Arial; margin: 40px; background: #e8f5e9; }
        .container { background: white; padding: 30px; border-radius: 10px; max-width: 600px; margin: 0 auto; }
        h1 { color: #27ae60; }
        .success { background: #d4edda; padding: 20px; border-radius: 8px; margin: 20px 0; }
    </style>
</head>
<body>
    <div class="container">
        <h1>✅ ${titre}</h1>
        
        <div class="success">
            <p>${message}</p>
        </div>
        
        <h3>📋 Détails</h3>
        <p><strong>ID :</strong> ${id}</p>
        <p><strong>Nom :</strong> ${nom}</p>
        <p><strong>Localisation :</strong> ${localisation}</p>
        <p><strong>Employés :</strong> ${nombreEmployes}</p>
        
        <p><a href="/test-framework-mvc/dept/form/add">← Ajouter un autre</a></p>
    </div>
</body>
</html>