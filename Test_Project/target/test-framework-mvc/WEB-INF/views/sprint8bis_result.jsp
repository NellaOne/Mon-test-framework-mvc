<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="mg.etu3273.test.model.Employee" %>
<%@ page import="mg.etu3273.test.model.Department" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>${titre}</title>
    <style>
        body{font-family:Arial;margin:40px;background:#27ae60}
        .box{background:white;padding:30px;border-radius:10px;max-width:700px;margin:0 auto}
        h1{color:#27ae60}
        .badge{background:#f39c12;color:white;padding:5px 15px;border-radius:20px;display:inline-block;margin-bottom:20px}
        .success{background:#d4edda;padding:15px;border-radius:8px;margin:15px 0;border-left:4px solid#27ae60}
        table{width:100%;border-collapse:collapse;margin:20px 0}
        th{background:#27ae60;color:white;padding:12px;text-align:left}
        td{padding:10px;border-bottom:1px solid #ddd}
        .nested{background:#f8f9fa;padding:10px;margin:10px 0;border-left:3px solid #3498db}
    </style>
</head>
<body>
    <div class="box">
        <h1>✅ ${titre}</h1>
        <span class="badge">${sprint}</span>
        
        <%
            Employee employee = (Employee) request.getAttribute("employee");
            if (employee != null) {
        %>
        
        <div class="success">
            <h3 style="margin-top:0">👤 Employé créé automatiquement :</h3>
            
            <table>
                <tr>
                    <th>Attribut</th>
                    <th>Valeur</th>
                    <th>Type</th>
                </tr>
                <tr>
                    <td><strong>Nom</strong></td>
                    <td><%= employee.getNom() %></td>
                    <td style="color:#666;font-size:13px">String</td>
                </tr>
                <tr>
                    <td><strong>Âge</strong></td>
                    <td><%= employee.getAge() != null ? employee.getAge() : "<em>null</em>" %></td>
                    <td style="color:#666;font-size:13px">Integer</td>
                </tr>
                <tr>
                    <td><strong>Salaire</strong></td>
                    <td><%= employee.getSalaire() != null ? String.format("%.2f Ar", employee.getSalaire()) : "<em>null</em>" %></td>
                    <td style="color:#666;font-size:13px">Double</td>
                </tr>
            </table>
            
            <%
                Department dept = employee.getDepartment();
                if (dept != null) {
            %>
            <div class="nested">
                <h4 style="margin-top:0">🏢 Département (objet imbriqué) :</h4>
                <table>
                    <tr>
                        <td><strong>Nom :</strong></td>
                        <td><%= dept.getNom() %></td>
                    </tr>
                    <tr>
                        <td><strong>Code :</strong></td>
                        <td><%= dept.getCode() %></td>
                    </tr>
                    <tr>
                        <td><strong>Budget :</strong></td>
                        <td><%= dept.getBudget() != null ? dept.getBudget() + " Ar" : "<em>null</em>" %></td>
                    </tr>
                </table>
            </div>
            <%
                }
            %>
            
            <%
                List<String> hobbies = employee.getHobbies();
                if (hobbies != null && !hobbies.isEmpty()) {
            %>
            <div class="nested">
                <h4 style="margin-top:0">🎯 Hobbies (liste) :</h4>
                <ul>
                    <% for (String hobby : hobbies) { %>
                        <li><%= hobby %></li>
                    <% } %>
                </ul>
            </div>
            <%
                }
            %>
        </div>
        
        <div style="background:#e7f3ff;padding:15px;border-radius:8px;margin:20px 0">
            <strong>✅ Sprint 8-bis : Ce qui s'est passé :</strong>
            <ul style="margin:10px 0">
                <li>✅ Le framework a détecté que <code>Employee e</code> est un objet personnalisé</li>
                <li>✅ Il a créé une nouvelle instance avec <code>new Employee()</code></li>
                <li>✅ Il a rempli automatiquement tous les attributs depuis le formulaire</li>
                <li>✅ Il a converti les types (String → Integer, String → Double)</li>
                <% if (dept != null) { %>
                <li>✅ Il a créé et rempli l'objet imbriqué <code>Department</code></li>
                <% } %>
                <% if (hobbies != null && !hobbies.isEmpty()) { %>
                <li>✅ Il a créé et rempli la liste <code>List&lt;String&gt;</code></li>
                <% } %>
            </ul>
        </div>
        
        <%
            } else {
        %>
        <div style="background:#f8d7da;padding:15px;border-radius:8px;color:#721c24">
            ❌ Aucun employé reçu (objet null)
        </div>
        <%
            }
        %>
        
        <p><a href="/test-framework-mvc/sprint8bis/form-simple" style="color:#27ae60;font-weight:bold">← Retour au formulaire</a></p>
    </div>
</body>
</html>