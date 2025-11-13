<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Détail Employé - Sprint 5</title>
    <style>
        body { font-family: Arial; margin: 40px; background: #e8f5e9; }
        .container { background: white; padding: 30px; border-radius: 10px; max-width: 600px; margin: 0 auto; }
        h1 { color: #27ae60; }
        .card { border: 2px solid #27ae60; padding: 20px; border-radius: 8px; margin: 20px 0; }
    </style>
</head>
<body>
    <div class="container">
        <h1>👤 ${message}</h1>
        
        <!-- ✅ Accès aux propriétés d'un objet avec ${objet.propriete} -->
        <div class="card">
            <h2>${employee.nom} ${employee.prenom}</h2>
            <p><strong>Âge :</strong> ${employee.age} ans</p>
            <p><strong>Poste :</strong> ${employee.poste}</p>
            <p><strong>Salaire :</strong> ${employee.salaire} Ar</p>
        </div>
        
        <p style="color: #27ae60;">
            ✅ Objet Employee envoyé depuis EmployeeController.detail()
        </p>
    </div>
</body>
</html>