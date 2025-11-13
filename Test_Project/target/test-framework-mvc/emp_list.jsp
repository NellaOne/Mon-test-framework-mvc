<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Liste Employés - Sprint 5</title>
    <style>
        body { font-family: Arial; margin: 40px; background: #e3f2fd; }
        .container { background: white; padding: 30px; border-radius: 10px; max-width: 900px; margin: 0 auto; }
        h1 { color: #1976d2; }
        table { width: 100%; border-collapse: collapse; margin: 20px 0; }
        th { background: #1976d2; color: white; padding: 12px; text-align: left; }
        td { padding: 10px; border-bottom: 1px solid #ddd; }
        tr:hover { background: #f5f5f5; }
        .badge { background: #4caf50; color: white; padding: 5px 10px; border-radius: 12px; }
    </style>
</head>
<body>
    <div class="container">
        <h1>📋 ${titre}</h1>
        <p>Total : <span class="badge">${total} employé(s)</span></p>
        
        <table>
            <thead>
                <tr>
                    <th>Nom</th>
                    <th>Prénom</th>
                    <th>Âge</th>
                    <th>Poste</th>
                    <th>Salaire</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="emp" items="${employees}">
                    <tr>
                        <td>${emp.nom}</td>
                        <td>${emp.prenom}</td>
                        <td>${emp.age} ans</td>
                        <td>${emp.poste}</td>
                        <td>${emp.salaire} Ar</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        
        <p style="color: #1976d2;">
            ✅ Liste envoyée depuis EmployeeController.listEmployee()
        </p>
    </div>
</body>
</html>