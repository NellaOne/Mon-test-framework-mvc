<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Créer Département - Sprint 6-bis</title>
    <style>
        body { font-family: Arial; margin: 40px; background: linear-gradient(135deg, #f093fb 0%, #f5576c 100%); }
        .container { background: white; padding: 40px; border-radius: 15px; max-width: 600px; margin: 0 auto; box-shadow: 0 10px 30px rgba(0,0,0,0.3); }
        h1 { color: #d63384; border-bottom: 3px solid #d63384; padding-bottom: 15px; }
        .info { background: #f8d7da; color: #842029; padding: 15px; border-radius: 8px; margin-bottom: 20px; border-left: 5px solid #d63384; }
        .form-group { margin: 20px 0; }
        label { display: block; font-weight: bold; margin-bottom: 5px; color: #842029; }
        input { width: 100%; padding: 10px; border: 2px solid #ddd; border-radius: 5px; font-size: 16px; }
        input:focus { border-color: #d63384; outline: none; }
        button { background: #d63384; color: white; padding: 12px 30px; border: none; border-radius: 5px; font-size: 16px; cursor: pointer; margin-top: 20px; }
        button:hover { background: #b02a64; }
        code { background: #f8d7da; padding: 2px 6px; border-radius: 3px; }
    </style>
</head>
<body>
    <div class="container">
        <h1>🆕 ${titre}</h1>
        
        <div class="info">
            <strong>🎯 Sprint 6-bis :</strong> Les attributs <code>name</code> du formulaire sont <strong>différents</strong> des noms des arguments dans le contrôleur. L'annotation <code>@RequestParam</code> fait le mapping !
        </div>
        
        <!-- ✅ FORMULAIRE avec noms différents des arguments -->
        <form action="/test-framework-mvc/dept/create" method="post">
            <div class="form-group">
                <label for="departement_id">ID Département :</label>
                <input type="number" id="departement_id" name="departement_id" required>
                <small style="color: #666;">→ Mapped vers <code>id</code> avec @RequestParam</small>
            </div>
            
            <div class="form-group">
                <label for="departement_nom">Nom Département :</label>
                <input type="text" id="departement_nom" name="departement_nom" required>
                <small style="color: #666;">→ Mapped vers <code>nom</code> avec @RequestParam</small>
            </div>
            
            <div class="form-group">
                <label for="dept_localisation">Localisation :</label>
                <input type="text" id="dept_localisation" name="dept_localisation" required>
                <small style="color: #666;">→ Mapped vers <code>localisation</code> avec @RequestParam</small>
            </div>
            
            <div class="form-group">
                <label for="nb_employes">Nombre d'Employés :</label>
                <input type="number" id="nb_employes" name="nb_employes" required>
                <small style="color: #666;">→ Mapped vers <code>nombreEmployes</code> avec @RequestParam</small>
            </div>
            
            <button type="submit">🚀 Créer avec @RequestParam</button>
        </form>
    </div>
</body>
</html>