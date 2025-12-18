<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>${titre}</title>
    <style>
        body{font-family:Arial;margin:40px;background:#8e44ad}
        .box{background:white;padding:30px;border-radius:10px;max-width:600px;margin:0 auto}
        h1{color:#8e44ad}
        .info{background:#f4e6ff;padding:15px;border-radius:8px;margin-bottom:20px;border-left:4px solid#8e44ad}
        .form-group{margin:15px 0}
        label{display:block;font-weight:bold;margin-bottom:5px}
        input{width:100%;padding:10px;border:2px solid #ddd;border-radius:5px;box-sizing:border-box}
        button{background:#8e44ad;color:white;padding:12px 30px;border:none;border-radius:5px;cursor:pointer;margin-top:15px}
        button:hover{background:#6c3483}
        .code{background:#f8f9fa;padding:10px;border-radius:5px;font-family:monospace;margin:10px 0}
    </style>
</head>
<body>
    <div class="box">
        <h1> ${titre}</h1>
        
        <div class="info">
            <strong> Sprint 8-bis - Test 1 :</strong> Binding d'un objet simple<br>
            Le framework va automatiquement créer une instance d'Employee et remplir ses attributs !
        </div>

        <div class="code">
            <strong>Contrôleur :</strong><br>
            @PostUrl("/sprint8bis/save-simple")<br>
            public ModelView saveSimple(<span style="color:#e74c3c">Employee e</span>) { ... }
        </div>

        <form action="/test-framework-mvc/sprint8bis/save-simple" method="POST">
            <div class="form-group">
                <label>Nom (e.nom) :</label>
                <input type="text" name="e.nom" value="Jean Rakoto" required>
            </div>
            
            <div class="form-group">
                <label>Âge (e.age) :</label>
                <input type="number" name="e.age" value="30" required>
            </div>
            
            <div class="form-group">
                <label>Salaire (e.salaire) :</label>
                <input type="number" step="0.01" name="e.salaire" value="2500000" required>
            </div>
            
            <button type="submit"> Enregistrer (binding automatique)</button>
        </form>

        <div style="margin-top:20px;background:#e7f3ff;padding:15px;border-radius:8px">
            <strong> Magie du framework :</strong>
            <ul style="margin:10px 0">
                <li> Le framework détecte que <code>e</code> est un objet personnalisé</li>
                <li> Il crée automatiquement une instance d'<code>Employee</code></li>
                <li> Il remplit <code>e.nom</code>, <code>e.age</code>, <code>e.salaire</code></li>
                <li> Il convertit les types (String → Integer, String → Double)</li>
            </ul>
        </div>

        <p style="margin-top:20px">
            <a href="/test-framework-mvc/sprint8bis/form-nested" style="color:#8e44ad">→ Test 2 : Objet imbriqué</a>
        </p>
    </div>
</body>
</html>