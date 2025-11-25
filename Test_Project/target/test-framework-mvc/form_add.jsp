<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Formulaire - Sprint 6</title>
    <style>
        body { font-family: Arial; margin: 40px; background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); }
        .container { background: white; padding: 40px; border-radius: 15px; max-width: 600px; margin: 0 auto; box-shadow: 0 10px 30px rgba(0,0,0,0.3); }
        h1 { color: #2c3e50; border-bottom: 3px solid #667eea; padding-bottom: 15px; }
        .form-group { margin: 20px 0; }
        label { display: block; font-weight: bold; margin-bottom: 5px; color: #34495e; }
        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 10px;
            border: 2px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
        }
        input:focus { border-color: #667eea; outline: none; }
        button {
            background: #667eea;
            color: white;
            padding: 12px 30px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            margin-top: 20px;
        }
        button:hover { background: #5568d3; }
        .info { background: #d1ecf1; padding: 15px; border-radius: 8px; margin-bottom: 20px; color: #0c5460; }
    </style>
</head>
<body>
    <div class="container">
        <h1>📝 ${titre}</h1>
        
        <div class="info">
            <strong>🎯 Sprint 6 :</strong> Les paramètres du formulaire seront automatiquement injectés dans la méthode du contrôleur si les noms correspondent !
        </div>
        
        <!-- ✅ FORMULAIRE avec action vers /form/save -->
        <form action="/test-framework-mvc/form/save" method="post">
            <div class="form-group">
                <label for="id">ID :</label>
                <input type="number" id="id" name="id" placeholder="Ex: 1">
            </div>
            
            <div class="form-group">
                <label for="nom">Nom :</label>
                <input type="text" id="nom" name="nom" placeholder="Ex: Jean Rakoto" required>
            </div>
            
            <div class="form-group">
                <label for="age">Âge :</label>
                <input type="number" id="age" name="age" placeholder="Ex: 25">
            </div>
            
            <div class="form-group">
                <label for="ville">Ville :</label>
                <input type="text" id="ville" name="ville" placeholder="Ex: Antananarivo">
            </div>
            
            <button type="submit">💾 Enregistrer (Sprint 6)</button>
        </form>
        
        <div style="margin-top: 30px; padding: 15px; background: #fff3cd; border-radius: 8px;">
            <p style="margin: 0; color: #856404;">
                <strong>Note :</strong> Les attributs <code>name</code> des inputs correspondent aux noms des paramètres dans le contrôleur.
            </p>
        </div>
    </div>
</body>
</html>