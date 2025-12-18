<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>${titre}</title>
    <style>
        body{font-family:Arial;margin:40px;background:#3498db}
        .box{background:white;padding:30px;border-radius:10px;max-width:600px;margin:0 auto}
        h1{color:#3498db}
        .form-group{margin:15px 0}
        label{display:block;font-weight:bold;margin-bottom:5px}
        input{width:100%;padding:10px;border:2px solid #ddd;border-radius:5px;box-sizing:border-box}
        button{background:#3498db;color:white;padding:12px 30px;border:none;border-radius:5px;cursor:pointer;margin-top:15px}
    </style>
</head>
<body>
    <div class="box">
        <h1> ${titre}</h1>
        <form action="/test-framework-mvc/test/save" method="post">
            <div class="form-group">
                <label>Nom :</label>
                <input type="text" name="nom" required>
            </div>
            <div class="form-group">
                <label>Âge :</label>
                <input type="number" name="age" required>
            </div>
            <div class="form-group">
                <label>Ville :</label>
                <input type="text" name="ville" required>
            </div>
            <button type="submit"> Enregistrer</button>
        </form>
        <p style="margin-top:20px;color:#666"> Sprint 6 : Les paramètres seront injectés automatiquement</p>
    </div>
</body>
</html>