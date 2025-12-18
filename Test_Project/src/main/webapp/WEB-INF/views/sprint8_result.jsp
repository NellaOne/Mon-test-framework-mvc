<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>${titre}</title>
    <style>
        body{font-family:Arial;margin:40px;background:#27ae60}
        .box{background:white;padding:30px;border-radius:10px;max-width:600px;margin:0 auto}
        h1{color:#27ae60}
        .success{background:#d4edda;padding:15px;border-radius:8px;margin:15px 0;border-left:4px solid #27ae60}
        .badge{background:#f39c12;color:white;padding:5px 15px;border-radius:20px;display:inline-block}
        .info{background:#e7f3ff;padding:10px;border-radius:5px;margin:10px 0;font-size:14px}
    </style>
</head>
<body>
    <div class="box">
        <h1> ${titre}</h1>
        <span class="badge">${sprint}</span>
        
        <h3> Tous les paramètres reçus :</h3>
        <table>
            <tr>
                <th>Paramètre</th>
                <th>Valeur</th>
                <th>Type</th>
            </tr>
            <%
                Map<String, Object> data = (Map<String, Object>) request.getAttribute("data");
                if (data != null) {
                    for (Map.Entry<String, Object> entry : data.entrySet()) {
                        String key = entry.getKey();
                        Object value = entry.getValue();
                        String displayValue = "";
                        String type = "";
                        
                        if (value == null) {
                            displayValue = "<em>null</em>";
                            type = "null";
                        } else if (value instanceof String[]) {
                            String[] arr = (String[]) value;
                            displayValue = String.join(", ", arr);
                            type = "String[] (" + arr.length + " valeurs)";
                        } else {
                            displayValue = value.toString();
                            type = value.getClass().getSimpleName();
                        }
            %>
                        <tr>
                            <td><strong><%= key %></strong></td>
                            <td><%= displayValue %></td>
                            <td style="color:#666;font-size:13px"><%= type %></td>
                        </tr>
            <%
                    }
                } else {
            %>
                    <tr><td colspan="3" style="text-align:center;color:#999">Aucune donnée</td></tr>
            <%
                }
            %>
        </table>
        <div class="info">
            <strong> Sprint 8 : Avantages</strong>
            <ul style="margin:10px 0">
                <li> Aucun casting nécessaire dans le contrôleur</li>
                <li> Tous les paramètres automatiquement dans la Map</li>
                <li> Checkboxes multiples → String[] automatique</li>
                <li> Le développeur fait juste <code>mv.addObject("data", params)</code></li>
            </ul>
        </div> 
        <p><a href="/test-framework-mvc/test/sprint8-form" style="color:#27ae60;font-weight:bold">← Retour au formulaire</a></p>
    </div>
</body>
</html>