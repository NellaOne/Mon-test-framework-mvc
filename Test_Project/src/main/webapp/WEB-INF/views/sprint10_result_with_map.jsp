<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>${titre}</title>
    <style>
        body{font-family:Arial;margin:40px;background:#27ae60}
        .box{background:white;padding:30px;border-radius:10px;max-width:700px;margin:0 auto}
        h1{color:#27ae60}
        .success{background:#d4edda;padding:20px;border-radius:8px;margin:20px 0;border-left:4px solid#27ae60}
        .error{background:#f8d7da;padding:20px;border-radius:8px;margin:20px 0;border-left:4px solid#e74c3c;color:#721c24}
        table{width:100%;border-collapse:collapse;margin:15px 0}
        th{background:#27ae60;color:white;padding:12px;text-align:left}
        td{padding:10px;border-bottom:1px solid #ddd}
        .section{background:#f8f9fa;padding:15px;border-radius:8px;margin:15px 0}
    </style>
</head>
<body>
    <div class="box">
        <h1> ${titre}</h1>
        
        <% 
            Map<String, Object> params = (Map<String, Object>) request.getAttribute("params");
            Boolean success = (Boolean) request.getAttribute("success");
        %>
        
        <% if (success != null && success) { %>
        
        <div class="success">
            <h3 style="margin-top:0"> Formulaire et fichier envoyés avec succès !</h3>
        </div>

        <!-- Données de la Map -->
        <div class="section">
            <h3 style="margin-top:0;color:#3498db"> Paramètres (Sprint 8 - Map)</h3>
            <table>
                <tr>
                    <th>Paramètre</th>
                    <th>Valeur</th>
                    <th>Type</th>
                </tr>
                <% if (params != null && !params.isEmpty()) {
                    for (Map.Entry<String, Object> entry : params.entrySet()) {
                        String key = entry.getKey();
                        Object value = entry.getValue();
                        String displayValue = value != null ? value.toString() : "<em>null</em>";
                        String type = value != null ? value.getClass().getSimpleName() : "null";
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
                <tr>
                    <td colspan="3" style="text-align:center;color:#999">Aucune donnée dans la Map</td>
                </tr>
                <% } %>
            </table>
        </div>

        <!-- Fichier uploadé -->
        <div class="section" style="background:#e8f5e9">
            <h3 style="margin-top:0;color:#e74c3c"> Fichier (Sprint 10 - FileUpload)</h3>
            <table>
                <tr>
                    <th>Information</th>
                    <th>Valeur</th>
                </tr>
                <tr>
                    <td><strong>Nom du fichier</strong></td>
                    <td>${fileName}</td>
                </tr>
                <tr>
                    <td><strong>Taille</strong></td>
                    <td>${fileSize}</td>
                </tr>
                <tr>
                    <td><strong>Sauvegardé dans</strong></td>
                    <td><code>${savedPath}</code></td>
                </tr>
            </table>
        </div>

        <div style="background:#e7f3ff;padding:20px;border-radius:8px;margin:20px 0">
            <strong> Ce qui s'est passé :</strong>
            <ol style="margin:10px 0;line-height:1.8">
                <li>Le framework a construit une <code>Map&lt;String, Object&gt;</code> avec tous les champs texte</li>
                <li>Il a extrait le fichier uploadé séparément</li>
                <li>Il a créé un <code>FileUpload</code> avec le nom et le contenu</li>
                <li>Il a injecté les 2 paramètres : <code>Map params</code> et <code>FileUpload fichier</code></li>
                <li>Le contrôleur a pu accéder aux données : <code>params.get("nom")</code></li>
                <li>Et au fichier : <code>fichier.saveTo("C:/uploads/")</code></li>
            </ol>
        </div>
        s
        <% } else { %>
        
        <div class="error">
            <h3 style="margin-top:0"> Erreur</h3>
            <p>${error}</p>
        </div>
        
        <% } %>

        <p>
            <a href="/test-framework-mvc/sprint10/form-with-map" style="color:#27ae60;font-weight:bold">← Retour au formulaire</a>
        </p>
    </div>
</body>
</html>