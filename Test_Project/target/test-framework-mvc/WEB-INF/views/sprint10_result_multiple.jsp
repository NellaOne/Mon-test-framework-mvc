<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>${titre}</title>
    <style>
        body{font-family:Arial;margin:40px;background:#3498db}
        .box{background:white;padding:30px;border-radius:10px;max-width:700px;margin:0 auto}
        h1{color:#3498db}
        .success{background:#d4edda;padding:20px;border-radius:8px;margin:20px 0;border-left:4px solid#27ae60}
        .file-section{background:#f8f9fa;padding:20px;border-radius:8px;margin:15px 0;border-left:4px solid #3498db}
        table{width:100%;border-collapse:collapse;margin:15px 0}
        th{background:#3498db;color:white;padding:12px;text-align:left}
        td{padding:10px;border-bottom:1px solid #ddd}
        .error{background:#f8d7da;padding:10px;border-radius:5px;margin:10px 0;color:#721c24}
    </style>
</head>
<body>
    <div class="box">
        <h1> ${titre}</h1>
        
        <% if (request.getAttribute("titre_doc") != null) { %>
        <div style="background:#e7f3ff;padding:15px;border-radius:8px;margin:20px 0">
            <strong> Titre :</strong> ${titre_doc}
        </div>
        <% } %>

        <div class="success">
            <h3 style="margin-top:0"> Upload multiple réussi !</h3>
            <p><strong>Fichiers uploadés :</strong> ${uploadedCount} / 2</p>
            <% if (request.getAttribute("savedFiles") != null) { %>
            <p><strong>Fichiers :</strong> ${savedFiles}</p>
            <% } %>
        </div>

        <% if (request.getAttribute("documentName") != null) { %>
        <div class="file-section">
            <h3 style="margin-top:0;color:#3498db"> Document</h3>
            <table>
                <tr>
                    <th>Information</th>
                    <th>Valeur</th>
                </tr>
                <tr>
                    <td><strong>Nom</strong></td>
                    <td>${documentName}</td>
                </tr>
                <tr>
                    <td><strong>Taille</strong></td>
                    <td>${documentSize}</td>
                </tr>
                <tr>
                    <td><strong>Sauvegardé dans</strong></td>
                    <td><code>${documentPath}</code></td>
                </tr>
            </table>
        </div>
        <% } else if (request.getAttribute("documentError") != null) { %>
        <div class="error">
             Erreur document : ${documentError}
        </div>
        <% } %>

        <% if (request.getAttribute("imageName") != null) { %>
        <div class="file-section" style="border-left-color:#e74c3c">
            <h3 style="margin-top:0;color:#e74c3c">🖼️ Image</h3>
            <table>
                <tr>
                    <th>Information</th>
                    <th>Valeur</th>
                </tr>
                <tr>
                    <td><strong>Nom</strong></td>
                    <td>${imageName}</td>
                </tr>
                <tr>
                    <td><strong>Taille</strong></td>
                    <td>${imageSize}</td>
                </tr>
                <tr>
                    <td><strong>Sauvegardé dans</strong></td>
                    <td><code>${imagePath}</code></td>
                </tr>
            </table>
        </div>
        <% } else if (request.getAttribute("imageError") != null) { %>
        <div class="error">
             Erreur image : ${imageError}
        </div>
        <% } %>

        <div style="background:#e7f3ff;padding:15px;border-radius:8px;margin:20px 0">
            <strong> Ce qui s'est passé :</strong>
            <ol style="margin:10px 0;line-height:1.8">
                <li>Le navigateur a envoyé 2 fichiers dans la même requête</li>
                <li>Le framework a détecté les 2 fichiers avec <code>request.getParts()</code></li>
                <li>Il a créé 2 objets <code>FileUpload</code> distincts</li>
                <li>Il les a injectés dans les bons paramètres selon le <code>name</code></li>
                <li>Le contrôleur a reçu : <code>document</code>, <code>image</code>, <code>titre</code></li>
                <li>Les 2 fichiers ont été sauvegardés sur le serveur !</li>
            </ol>
        </div>

        <p>
            <a href="/test-framework-mvc/sprint10/form-multiple" style="color:#3498db;font-weight:bold">← Retour au formulaire</a>
        </p>
    </div>
</body>
</html>