<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Formulaire - Sprint 6-bis</title>
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
        <h1>📝 ${titre}</h1>
        
        <form action="/test-framework-mvc/form/submit" method="post">
            <div class="form-group">
                <label>User ID :</label>
                <input type="number" name="user_id" required>
            </div>
            
            <div class="form-group">
                <label>User Name :</label>
                <input type="text" name="user_name" required>
            </div>
            
            <div class="form-group">
                <label>User Email :</label>
                <input type="email" name="user_email" required>
            </div>
            
            <div class="form-group">
                <label>User Active :</label>
                <select name="user_active">
                    <option value="true">Oui</option>
                    <option value="false">Non</option>
                </select>
            </div>
            
            <button type="submit">📤 Envoyer</button>
        </form>
    </div>
</body>
</html>