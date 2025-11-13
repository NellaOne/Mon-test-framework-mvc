<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Liste Personnes - Sprint 5</title>
    <style>
        body { font-family: Arial; margin: 40px; background: #e1f5fe; }
        .container { background: white; padding: 30px; border-radius: 10px; }
        h1 { color: #0288d1; }
        table { width: 100%; border-collapse: collapse; margin: 20px 0; }
        th { background: #0288d1; color: white; padding: 12px; }
        td { padding: 10px; border-bottom: 1px solid #ddd; }
    </style>
</head>
<body>
    <div class="container">
        <h1>📋 Liste des Personnes</h1>
        <p>Total : ${total} personne(s)</p>
        
        <table>
            <tr>
                <th>Nom</th>
                <th>Âge</th>
                <th>Ville</th>
            </tr>
            <c:forEach var="p" items="${personnes}">
                <tr>
                    <td>${p.nom}</td>
                    <td>${p.age} ans</td>
                    <td>${p.ville}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>