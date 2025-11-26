<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>${titre}</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            margin: 0;
            padding: 40px;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        .container {
            background: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.2);
            max-width: 500px;
            width: 100%;
        }
        h1 {
            color: #667eea;
            text-align: center;
            margin-bottom: 10px;
        }
        .badge {
            display: inline-block;
            background: #27ae60;
            color: white;
            padding: 5px 15px;
            border-radius: 20px;
            font-size: 14px;
            font-weight: bold;
            margin-bottom: 20px;
        }
        .info {
            background: #e8f5e9;
            padding: 15px;
            border-radius: 8px;
            border-left: 4px solid #27ae60;
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        label {
            display: block;
            font-weight: bold;
            margin-bottom: 8px;
            color: #333;
        }
        input[type="text"],
        input[type="email"],
        input[type="number"] {
            width: 100%;
            padding: 12px;
            border: 2px solid #e0e0e0;
            border-radius: 8px;
            font-size: 16px;
            box-sizing: border-box;
            transition: border 0.3s;
        }
        input:focus {
            outline: none;
            border-color: #667eea;
        }
        button {
            width: 100%;
            padding: 15px;
            background: #667eea;
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 18px;
            font-weight: bold;
            cursor: pointer;
            transition: background 0.3s;
        }
        button:hover {
            background: #5568d3;
        }
        .method-badge {
            display: inline-block;
            padding: 4px 10px;
            border-radius: 5px;
            font-size: 12px;
            font-weight: bold;
            margin-left: 10px;
        }
        .GET {
            background: #27ae60;
            color: white;
        }
        .POST {
            background: #3498db;
            color: white;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>🚀 ${titre}</h1>
        <span class="badge">Sprint 7 - @GetMapping</span>
        
        <div class="info">
            <strong>🎯 Sprint 7 :</strong> Cette page est affichée via <strong>GET</strong>. 
            Lorsque vous soumettrez le formulaire, il utilisera <strong>POST</strong> 
            sur la même URL !
        </div>

        <p><strong>${message}</strong></p>

        <form action="/test-framework-mvc/user/form" method="POST">
            <div class="form-group">
                <label for="nom">Nom complet :</label>
                <input type="text" id="nom" name="nom" placeholder="Ex: Jean Rakoto" required>
            </div>

            <div class="form-group">
                <label for="email">Email :</label>
                <input type="email" id="email" name="email" placeholder="Ex: jean@example.com" required>
            </div>

            <div class="form-group">
                <label for="age">Âge :</label>
                <input type="number" id="age" name="age" placeholder="Ex: 25" required>
            </div>

            <button type="submit">💾 Enregistrer (POST)</button>
        </form>

        <div style="margin-top: 30px; padding: 15px; background: #fff3cd; border-radius: 8px;">
            <h4 style="margin-top: 0;">✅ Comment ça fonctionne ?</h4>
            <p><span class="method-badge GET">GET</span> /user/form → showUserForm() → Affiche ce formulaire</p>
            <p><span class="method-badge POST">POST</span> /user/form → submitUserForm() → Traite les données</p>
        </div>
    </div>
</body>
</html>