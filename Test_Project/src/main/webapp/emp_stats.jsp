<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Statistiques - Sprint 5</title>
    <style>
        body { font-family: Arial; margin: 40px; background: #fff3e0; }
        .container { background: white; padding: 30px; border-radius: 10px; max-width: 900px; margin: 0 auto; }
        h1 { color: #f57c00; }
        .stats { display: grid; grid-template-columns: repeat(3, 1fr); gap: 20px; margin: 20px 0; }
        .stat-card { background: #ffe0b2; padding: 20px; border-radius: 8px; text-align: center; }
        .stat-value { font-size: 32px; font-weight: bold; color: #e65100; }
        table { width: 100%; border-collapse: collapse; margin: 20px 0; }
        th { background: #f57c00; color: white; padding: 12px; }
        td { padding: 10px; border-bottom: 1px solid #ddd; }
    </style>
</head>
<body>
    <div class="container">
        <h1>📊 Statistiques Département ${departement}</h1>
        
        <!-- ✅ Affichage de statistiques calculées -->
        <div class="stats">
            <div class="stat-card">
                <div class="stat-value">${nombreTotal}</div>
                <div>Employés</div>
            </div>
            <div class="stat-card">
                <div class="stat-value"><fmt:formatNumber value="${totalSalaires}" maxFractionDigits="0"/></div>
                <div>Total Salaires (Ar)</div>
            </div>
            <div class="stat-card">
                <div class="stat-value"><fmt:formatNumber value="${moyenneSalaire}" maxFractionDigits="0"/></div>
                <div>Moyenne Salaire (Ar)</div>
            </div>
        </div>
        
        <h3>Détail des Employés</h3>
        <table>
            <thead>
                <tr>
                    <th>Nom Complet</th>
                    <th>Âge</th>
                    <th>Poste</th>
                    <th>Salaire</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="emp" items="${employees}">
                    <tr>
                        <td>${emp.nom} ${emp.prenom}</td>
                        <td>${emp.age} ans</td>
                        <td>${emp.poste}</td>
                        <td><fmt:formatNumber value="${emp.salaire}" maxFractionDigits="0"/> Ar</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>