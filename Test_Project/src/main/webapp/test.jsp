<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Test Framework MVC - Page Statique</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <h1>🧪 Test Framework MVC - Ressources Statiques</h1>
        
        <div class="info">
            <h3>✅ Page Statique Fonctionnelle</h3>
            <p><strong>Si vous voyez cette page, cela signifie que :</strong></p>
            <ul>
                <li>Les ressources statiques (HTML) ne passent PAS par le FrontServlet</li>
                <li>Tomcat sert correctement les fichiers statiques</li>
                <li>Votre configuration web.xml est correcte</li>
            </ul>
        </div>

        <h3>🔗 Liens de Test</h3>
        <div class="test-links">
            <a href="url/list" target="_blank">Test: /url/list</a>
            <a href="test" target="_blank">Test: /test</a>
            <a href="nimportequoi" target="_blank">Test: /nimportequoi</a>
            <a href="api/users" target="_blank">Test: /api/users</a>
            <a href="admin/dashboard" target="_blank">Test: /admin/dashboard</a>
        </div>

        <h3>📁 Ressources Statiques</h3>
        <div class="test-links">
            <a href="style.css" class="static-resource" target="_blank">Test: style.css</a>
            <a href="test.jsp" class="static-resource" target="_blank">Test: test.jsp</a>
        </div>

        <div class="info">
            <h3>📋 Instructions de Test</h3>
            <p><strong>Les liens bleus</strong> doivent passer par le FrontServlet et afficher les informations de debug.</p>
            <p><strong>Les liens verts</strong> sont des ressources statiques et doivent être servies directement par Tomcat.</p>
        </div>
    </div>
</body>
</html>