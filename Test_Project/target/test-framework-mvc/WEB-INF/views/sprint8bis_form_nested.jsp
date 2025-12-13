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
        .info{background:#d1ecf1;padding:15px;border-radius:8px;margin-bottom:20px;border-left:4px solid#3498db}
        .form-group{margin:15px 0}
        label{display:block;font-weight:bold;margin-bottom:5px}
        input{width:100%;padding:10px;border:2px solid #ddd;border-radius:5px;box-sizing:border-box}
        button{background:#3498db;color:white;padding:12px 30px;border:none;border-radius:5px;cursor:pointer;margin-top:15px}
        button:hover{background:#2980b9}
        .code{background:#f8f9fa;padding:10px;border-radius:5px;font-family:monospace;margin:10px 0}
        .nested-section{background:#f4f6f9;padding:15px;border-radius:8px;margin:20px 0}
    </style>
</head>
<body>
    <div class="box">
        <h1>🚀 ${titre}</h1>
        
        <div class="info">
            <strong>🎯 Sprint 8-bis - Test 2 :</strong> Binding d'objet avec objet imbriqué<br>
            Le framework va créer <code>Employee</code> ET son <code>Department</code> automatiquement !
        </div>

        <div class="code">
            <strong>Classes :</strong><br>
            class Employee {<br>
            &nbsp;&nbsp;String nom;<br>
            &nbsp;&nbsp;Integer age;<br>
            &nbsp;&nbsp;<span style="color:#e74c3c">Department department;</span> // ← Objet imbriqué !<br>
            }
        </div>

        <form action="/test-framework-mvc/sprint8bis/save-nested" method="POST">
            <h3>👤 Informations de l'employé</h3>
            <div class="form-group">
                <label>Nom (e.nom) :</label>
                <input type="text" name="e.nom" value="Rasoa Rakoto" required>
            </div>
            
            <div class="form-group">
                <label>Âge (e.age) :</label>
                <input type="number" name="e.age" value="28" required>
            </div>
            
            <div class="form-group">
                <label>Salaire (e.salaire) :</label>
                <input type="number" step="0.01" name="e.salaire" value="3000000">
            </div>

            <div class="nested-section">
                <h3 style="margin-top:0">🏢 Département de l'employé</h3>
                
                <div class="form-group">
                    <label>Nom du département (e.department.nom) :</label>
                    <input type="text" name="e.department.nom" value="Ressources Humaines" required>
                </div>
                
                <div class="form-group">
                    <label>Code du département (e.department.code) :</label>
                    <input type="text" name="e.department.code" value="RH01" required>
                </div>
                
                <div class="form-group">
                    <label>Budget (e.department.budget) :</label>
                    <input type="number" name="e.department.budget" value="50000000">
                </div>
            </div>
            
            <button type="submit">💾 Enregistrer (avec objet imbriqué)</button>
        </form>

        <div style="margin-top:20px;background:#e7f3ff;padding:15px;border-radius:8px">
            <strong>✨ Magie du framework :</strong>
            <ul style="margin:10px 0">
                <li>✅ Détecte que <code>e.department</code> est un objet imbriqué</li>
                <li>✅ Crée automatiquement <code>new Department()</code></li>
                <li>✅ Remplit <code>department.nom</code>, <code>department.code</code>, etc.</li>
                <li>✅ Associe le département à l'employé avec <code>e.setDepartment(d)</code></li>
            </ul>
        </div>

        <p style="margin-top:20px">
            <a href="/test-framework-mvc/sprint8bis/form-simple" style="color:#3498db">← Test 1</a> |
            <a href="/test-framework-mvc/sprint8bis/form-multiple" style="color:#3498db">Test 3 →</a>
        </p>
    </div>
</body>
</html>