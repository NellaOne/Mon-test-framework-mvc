<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>${titre}</title>
    <style>
        body{font-family:Arial;margin:40px;background:#9b59b6}
        .box{background:white;padding:30px;border-radius:10px;max-width:700px;margin:0 auto}
        h1{color:#9b59b6}
        .badge{background:#f39c12;color:white;padding:5px 15px;border-radius:20px;display:inline-block;margin-bottom:20px}
        .separate-param{background:#e8daef;padding:15px;border-radius:8px;margin:20px 0;border-left:4px solid #9b59b6}
        table{width:100%;border-collapse:collapse;margin:20px 0}
        th{background:#9b59b6;color:white;padding:12px;text-align:left}
        td{padding:10px;border-bottom:1px solid #ddd}
    </style>
</head>
<body>
    <div class="box">
        <h1>✅ ${titre}</h1>
        <span class="badge">${sprint}</span>
        
        <!-- Paramètres séparés (hors Map) -->
        <div class="separate-param">
            <h3 style="margin-top:0">📌 Paramètres individuels (hors Map) :</h3>
            <% if (request.getAttribute("priority") != null) { %>
                <p><strong>Priority :</strong> ${priority}</p>
            <% } %>
            <% if (request.getAttribute("id") != null) { %>
                <p><strong>ID :</strong> ${id}</p>
            <% } %>
            <% if (request.getAttribute("action") != null) { %>
                <p><strong>Action :</strong> ${action}</p>
            <% } %>
        </div>
        
        <!-- Paramètres dans la Map -->
        <h3>📋 Tous les autres paramètres (dans la Map) :</h3>
        <table>
            <tr>
                <th>Paramètre</th>
                <th>Valeur</th>
                <th>Type</th>
            </tr>
            <%
                Map<String, Object> data = (Map<String, Object>) request.getAttribute("data");
                if (data != null && !data.isEmpty()) {
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
                    <tr><td colspan="3" style="text-align:center;color:#999">Aucune autre donnée</td></tr>
            <%
                }
            %>
        </table>
        
        <div style="background:#e7f3ff;padding:15px;border-radius:8px;margin:20px 0">
            <strong>✅ Sprint 8 - Mode Mixte :</strong>
            <ul style="margin:10px 0">
                <li>✅ Map contient tous les paramètres SAUF ceux déclarés individuellement</li>
                <li>✅ Pas besoin de @RequestParam pour les paramètres simples</li>
                <li>✅ Le framework gère l'injection automatiquement</li>
            </ul>
        </div>
        
        <p><a href="/test-framework-mvc/test/sprint8-form" style="color:#9b59b6;font-weight:bold">← Retour au formulaire</a></p>
    </div>
</body>
</html>