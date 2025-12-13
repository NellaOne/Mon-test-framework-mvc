<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>${titre}</title>
    <style>
        body{font-family:Arial;margin:40px;background:#9b59b6}
        .box{background:white;padding:30px;border-radius:10px;max-width:700px;margin:0 auto}
        h1{color:#9b59b6}
        .info{background:#f4e6ff;padding:15px;border-radius:8px;margin-bottom:20px;border-left:4px solid #9b59b6}
        .section{background:#f8f9fa;padding:20px;border-radius:8px;margin:20px 0}
        .form-group{margin:15px 0}
        label{display:block;font-weight:bold;margin-bottom:5px}
        input{width:100%;padding:10px;border:2px solid #ddd;border-radius:5px;box-sizing:border-box}
        button{background:#9b59b6;color:white;padding:12px 30px;border:none;border-radius:5px;cursor:pointer;margin-top:15px}
        button:hover{background:#8e44ad}
        .code{background:#f8f9fa;padding:10px;border-radius:5px;font-family:monospace;margin:10px 0;font-size:13px}
    </style>
</head>
<body>
    <div class="box">
        <h1>🚀 ${titre}</h1>
        
        <div class="info">
            <strong>🎯 Sprint 8-bis - Test 3 :</strong> Plusieurs objets simultanément<br>
            Le framework va créer et remplir <strong>3 objets différents</strong> en parallèle !
        </div>

        <div class="code">
            <strong>Contrôleur :</strong><br>
            @PostUrl("/sprint8bis/save-multiple")<br>
            public ModelView saveMultiple(<br>
            &nbsp;&nbsp;<span style="color:#e74c3c">Employee e</span>,<br>
            &nbsp;&nbsp;<span style="color:#3498db">Department d</span>,<br>
            &nbsp;&nbsp;<span style="color:#f39c12">Integer id</span><br>
            ) { ... }
        </div>

        <form action="/test-framework-mvc/sprint8bis/save-multiple" method="POST">
            
            <!-- Section Employee -->
            <div class="section" style="border-left:4px solid #e74c3c">
                <h3 style="margin-top:0;color:#e74c3c">👤 Objet 1 : Employee</h3>
                
                <div class="form-group">
                    <label>Nom de l'employé (e.nom) :</label>
                    <input type="text" name="e.nom" value="Sophie Andrianina" required>
                </div>
                
                <div class="form-group">
                    <label>Âge (e.age) :</label>
                    <input type="number" name="e.age" value="35">
                </div>
                
                <div class="form-group">
                    <label>Salaire (e.salaire) :</label>
                    <input type="number" step="0.01" name="e.salaire" value="5000000">
                </div>
            </div>

            <!-- Section Department -->
            <div class="section" style="border-left:4px solid #3498db">
                <h3 style="margin-top:0;color:#3498db">🏢 Objet 2 : Department</h3>
                
                <div class="form-group">
                    <label>Nom du département (d.nom) :</label>
                    <input type="text" name="d.nom" value="Direction Marketing" required>
                </div>
                
                <div class="form-group">
                    <label>Code (d.code) :</label>
                    <input type="text" name="d.code" value="MKT01" required>
                </div>
                
                <div class="form-group">
                    <label>Budget (d.budget) :</label>
                    <input type="number" name="d.budget" value="80000000">
                </div>
            </div>

            <!-- Section ID -->
            <div class="section" style="border-left:4px solid #f39c12">
                <h3 style="margin-top:0;color:#f39c12">🔢 Paramètre 3 : Integer</h3>
                
                <div class="form-group">
                    <label>ID (id) :</label>
                    <input type="number" name="id" value="42" required>
                </div>
            </div>
            
            <button type="submit">💾 Enregistrer (3 objets simultanés)</button>
        </form>

        <div style="margin-top:20px;background:#e7f3ff;padding:15px;border-radius:8px">
            <strong>✨ Magie du framework :</strong>
            <ul style="margin:10px 0">
                <li>✅ Détecte 3 paramètres dans la méthode du contrôleur</li>
                <li>✅ Crée : <code>Employee e = new Employee()</code></li>
                <li>✅ Remplit e depuis les champs <code>e.nom</code>, <code>e.age</code>, etc.</li>
                <li>✅ Crée : <code>Department d = new Department()</code></li>
                <li>✅ Remplit d depuis les champs <code>d.nom</code>, <code>d.code</code>, etc.</li>
                <li>✅ Récupère <code>id</code> et le convertit en Integer</li>
                <li>✅ Invoque : <code>controller.saveMultiple(e, d, id)</code></li>
            </ul>
        </div>

        <p style="margin-top:20px">
            <a href="/test-framework-mvc/sprint8bis/form-nested" style="color:#9b59b6">← Test 2</a> |
            <a href="/test-framework-mvc/sprint8bis/form-list" style="color:#9b59b6">Test 4 →</a>
        </p>
    </div>
</body>
</html>