<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="mg.etu3273.test.model.Employee" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>${titre}</title>
    <style>
        body{font-family:Arial;margin:40px;background:#0a0e10}
        .box{background:white;padding:30px;border-radius:10px;max-width:800px;margin:0 auto}
        h1{color:#3498db}
        .info{background:#d1ecf1;padding:15px;border-radius:8px;margin-bottom:20px;border-left:4px solid#3498db}
        table{width:100%;border-collapse:collapse;margin:20px 0}
        th{background:#3498db;color:white;padding:12px;text-align:left}
        td{padding:10px;border-bottom:1px solid #ddd}
    </style>
</head>
<body>
    <div class="box">
        <h1> ${titre}</h1>
        
        <div class="info">
            <strong>Mode classique (sans @RestAPI) :</strong><br>
            Cette page utilise une JSP pour afficher les données.<br>
            Comparez avec <code>/api/employees</code> qui retourne du JSON.
        </div>

        <%
            @SuppressWarnings("unchecked")
            List<Employee> employees = (List<Employee>) request.getAttribute("employees");
            if (employees != null && !employees.isEmpty()) {
        %>
        
        <table>
            <tr>
                <th>Nom</th>
                <th>Âge</th>
                <th>Salaire</th>
            </tr>
            <%
                for (Employee e : employees) {
            %>
            <tr>
                <td><%= e.getNom() %></td>
                <td><%= e.getAge() %> ans</td>
                <td><%= e.getSalaire() != null ? String.format("%.2f Ar", e.getSalaire()) : "N/A" %></td>
            </tr>
            <%
                }
            %>
        </table>
        
        <%
            } else {
        %>
        <p style="color:#999">Aucun employé trouvé.</p>
        <%
            }
        %>

        <div style="background:#e7f3ff;padding:20px;border-radius:8px;margin:20px 0">
            <strong> Comparaison :</strong>
            <ul style="margin:10px 0;line-height:1.8">
                <li><strong>Sans @RestAPI</strong> : Les données sont passées à une JSP qui génère du HTML</li>
                <li><strong>Avec @RestAPI</strong> : Les mêmes données sont converties en JSON et retournées directement</li>
                <li><strong>Même contrôleur, comportement différent !</strong></li>
            </ul>
        </div>

        <p>
            <a href="/test-framework-mvc/test/sprint9_index" style="color:#3498db;font-weight:bold">
                ← Retour aux tests API
            </a>
        </p>
    </div>
</body>
</html>