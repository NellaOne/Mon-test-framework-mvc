<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Ajouter Département - Sprint 6</title>
    <style>
        body { font-family: Arial; margin: 40px; background: #fff3e0; }
        .container { background: white; padding: 30px; border-radius: 10px; max-width: 600px; margin: 0 auto; }
        h1 { color: #f57c00; }
        .form-group { margin: 15px 0; }
        label { display: block; font-weight: bold; margin-bottom: 5px; }
        input { width: 100%; padding: 10px; border: 2px solid #ddd; border-radius: 5px; }
        button { background: #f57c00; color: white; padding: 12px 30px; border: none; border-radius: 5px; cursor: pointer; margin-top: 15px; }
    </style>
</head>
<body>
    <div class="container">
        <h1>🏢 ${titre}</h1>
        
        <form action="/test-framework-mvc/dept/save" method="post">
            <div class="form-group">
                <label>ID :</label>
                <input type="number" name="id" required>
            </div>
            
            <div class="form-group">
                <label>Nom :</label>
                <input type="text" name="nom" required>
            </div>
            
            <div class="form-group">
                <label>Localisation :</label>
                <input type="text" name="localisation" required>
            </div>
            
            <div class="form-group">
                <label>Nombre d'Employés :</label>
                <input type="number" name="nombreEmployes" required>
            </div>
            
            <button type="submit">💾 Enregistrer</button>
        </form>
    </div>
</body>
</html>