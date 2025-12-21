<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>${titre}</title>
    <style>
        body{font-family:Arial;margin:40px;background:#27ae60}
        .box{background:white;padding:30px;border-radius:10px;max-width:600px;margin:0 auto}
        h1{color:#27ae60}
        .success{background:#d4edda;padding:20px;border-radius:8px;margin:20px 0;border-left:4px solid#27ae60}
        .error{background:#f8d7da;padding:20px;border-radius:8px;margin:20px 0;border-left:4px solid#e74c3c;color:#721c24}
        table{width:100%;border-collapse:collapse;margin:15px 0}
        th{background:#27ae60;color:white;padding:12px;text-align:left}
        td{padding:10px;border-bottom:1px solid #ddd}
        .file-info{background:#f8f9fa;padding:15px;border-radius:5px;margin:10px 0}
    </style>
</head>
<body>
    <div class="box">
        <h1> ${titre}</h1>
        
        <% if (request.getAttribute("success") != null && (Boolean)request.getAttribute("success")) { %>
        
        <div class="success">
            <h3 style="margin-top:0"> Fichier uploadé avec succès !</h3>
            
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
                    <td><strong>Type MIME</strong></td>
                    <td>${fileType}</td>
                </tr>
                <tr>
                    <td><strong>Sauvegardé dans</strong></td>
                    <td><code>${savedPath}</code></td>
                </tr>
                <% if (request.getAttribute("description") != null) { %>
                <tr>
                    <td><strong>Description</strong></td>
                    <td>${description}</td>
                </tr>
                <% } %>
            </table>
        </div>
        
        <div style="background:#e7f3ff;padding:15px;border-radius:8px;margin:20px 0">
            <strong> Ce qui s'est passé :</strong>
            <ol style="margin:10px 0;line-height:1.8">
                <li>Le navigateur a envoyé le formulaire en <code>multipart/form-data</code></li>
                <li>Le framework a détecté le fichier avec <code>request.getParts()</code></li>
                <li>Il a lu le contenu en bytes avec <code>part.getInputStream()</code></li>
                <li>Il a créé un objet <code>FileUpload</code> avec le nom et le contenu</li>
                <li>Il l'a injecté dans le paramètre du contrôleur</li>
                <li>Le contrôleur a appelé <code>photo.saveTo("C:/uploads/")</code></li>
                <li>Le fichier est maintenant sauvegardé sur le serveur !</li>
            </ol>
        </div>
        
        <% } else { %>
        
        <div class="error">
            <h3 style="margin-top:0"> Erreur</h3>
            <p><strong>${error}</strong></p>
        </div>
        
        <% } %>

        <p>
            <a href="/test-framework-mvc/sprint10/form-single" style="color:#27ae60;font-weight:bold">← Retour au formulaire</a>
        </p>
    </div>
</body>
</html>