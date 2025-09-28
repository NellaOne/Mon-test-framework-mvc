<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Test Framework MVC - Page Statique</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: #f8f9fa;
        }
        .container {
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 2px 15px rgba(0,0,0,0.1);
        }
        h1 {
            color: #2c3e50;
            text-align: center;
            border-bottom: 3px solid #3498db;
            padding-bottom: 10px;
        }
        .test-links {
            margin: 30px 0;
        }
        .test-links a {
            display: inline-block;
            margin: 10px 15px;
            padding: 12px 20px;
            background: #3498db;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: background 0.3s;
        }
        .test-links a:hover {
            background: #2980b9;
        }
        .static-resource {
            background: #27ae60;
        }
        .static-resource:hover {
            background: #229954;
        }
        .info {
            background: #ecf0f1;
            padding: 15px;
            border-radius: 5px;
            margin: 20px 0;
        }
    </style>
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
            <a href="dept/liste" target="_blank">Test: /dept/liste</a>
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