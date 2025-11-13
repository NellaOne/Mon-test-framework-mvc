<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Liste Départements - Sprint 5</title>
    <style>
        body { font-family: Arial; margin: 40px; background: #fff3e0; }
        .container { background: white; padding: 30px; border-radius: 10px; }
        h1 { color: #f57c00; }
        table { width: 100%; border-collapse: collapse; margin: 20px 0; }
        th { background: #f57c00; color: white; padding: 12px; }
        td { padding: 10px; border-bottom: 1px solid #ddd; }
    </style>
</head>
<body>
    <div class="container">
        <h1>🏢 ${titre}</h1>
        <p>Total : ${total} département(s)</p>
        
        <table>
            <tr>
                <th>ID</th>
                <th>Nom</th>
                <th>Localisation</th>
                <th>Nombre d'Employés</th>
            </tr>
            <c:forEach var="dept" items="${departements}">
                <tr>
                    <td>${dept.id}</td>
                    <td>${dept.nom}</td>
                    <td>${dept.localisation}</td>
                    <td>${dept.nombreEmployes}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
