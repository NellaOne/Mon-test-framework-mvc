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
        .data{background:#d4edda;padding:15px;border-radius:8px;margin:15px 0}
    </style>
</head>
<body>
    <div class="box">
        <h1>✅ ${titre}</h1>
        <div class="data">
            <p><strong>Nom :</strong> ${nom}</p>
            <p><strong>Âge :</strong> ${age} ans</p>
            <p><strong>Ville :</strong> ${ville}</p>
        </div>
        <p>✅ Sprint 5 : Données transférées via <code>addObject()</code></p>
    </div>
</body>
</html>