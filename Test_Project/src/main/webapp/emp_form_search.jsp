<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Rechercher Employé - Sprint 6-bis</title>
    <style>
        body { font-family: Arial; margin: 40px; background: #e3f2fd; }
        .container { background: white; padding: 30px; border-radius: 10px; max-width: 600px; margin: 0 auto; }
        h1 { color: #1976d2; }
        .form-group { margin: 15px 0; }
        label { display: block; font-weight: bold; margin-bottom: 5px; }
        input { width: 100%; padding: 10px; border: 2px solid #ddd; border-radius: 5px; }
        button { background: #1976d2; color: white; padding: 12px 30px; border: none; border-radius: 5px; cursor: pointer; margin-top: 15px; }
    </style>
</head>
<body>
    <div class="container">
        <h1>🔍 ${titre}</h1>
        
        <form action="/test-framework-mvc/emp/search" method="get">
            <div class="form-group">
                <label>Nom Employé :</label>
                <input type="text" name="employee_name" placeholder="Ex: Rakoto">
                <small>→ @RequestParam("employee_name")</small>
            </div>
            
            <div class="form-group">
                <label>Âge Minimum :</label>
                <input type="number" name="min_age" placeholder="Ex: 25">
                <small>→ @RequestParam("min_age")</small>
            </div>
            
            <div class="form-group">
                <label>Âge Maximum :</label>
                <input type="number" name="max_age" placeholder="Ex: 40">
                <small>→ @RequestParam("max_age")</small>
            </div>
            
            <button type="submit">🔍 Rechercher</button>
        </form>
    </div>
</body>
</html>