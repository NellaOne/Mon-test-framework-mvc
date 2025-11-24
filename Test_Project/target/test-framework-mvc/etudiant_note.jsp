<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Notes Étudiant - Sprint 3-bis</title>
    <style>
        body { font-family: Arial; margin: 40px; background: #f5f5f5; }
        .container { background: white; padding: 30px; border-radius: 10px; max-width: 700px; margin: 0 auto; }
        h1 { color: #e74c3c; }
        .info { background: #ffe6e6; padding: 15px; border-radius: 8px; margin: 15px 0; }
    </style>
</head>
<body>
    <div class="container">
        <h1>📚 ${message}</h1>
        
        <div class="info">
            <h3>URL avec 2 paramètres dynamiques</h3>
            <p><strong>Pattern :</strong> <code>${urlPattern}</code></p>
            <p>Cette URL peut matcher par exemple :</p>
            <ul>
                <li>/etudiant/17/notes/math</li>
                <li>/etudiant/25/notes/physique</li>
                <li>/etudiant/30/notes/informatique</li>
            </ul>
        </div>
    </div>
</body>

</html>
