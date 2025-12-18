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
        .success{background:#d4edda;padding:15px;border-radius:8px;margin:15px 0}
        .badge{background:#f39c12;color:white;padding:5px 15px;border-radius:20px;display:inline-block}
    </style>
</head>
<body>
    <div class="box">
        <h1> ${titre}</h1>
        <span class="badge">${sprint}</span>
        <div class="success">
            <p><strong>Nom :</strong> ${nom}</p>
            <p><strong>Âge :</strong> ${age}</p>
            <p><strong>Ville :</strong> ${ville}</p>
        </div>
        <p> Données injectées automatiquement dans la méthode du contrôleur</p>
        <a href="/test-framework-mvc/test/form" style="color:#3498db">← Retour</a>
    </div>
</body>
</html>