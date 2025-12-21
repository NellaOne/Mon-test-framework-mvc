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
        .info{background:#f4e6ff;padding:15px;border-radius:8px;margin-bottom:20px;border-left:4px solid#9b59b6}
        .section{background:#f8f9fa;padding:20px;border-radius:8px;margin:20px 0;border-left:4px solid #9b59b6}
        .form-group{margin:15px 0}
        label{display:block;font-weight:bold;margin-bottom:5px}
        input[type="text"], input[type="number"]{width:100%;padding:10px;border:2px solid #ddd;border-radius:5px;box-sizing:border-box}
        input[type="file"]{padding:10px 0}
        button{background:#9b59b6;color:white;padding:12px 30px;border:none;border-radius:5px;cursor:pointer;margin-top:15px;font-size:16px}
        button:hover{background:#8e44ad}
        .code{background:#f8f9fa;padding:10px;border-radius:5px;font-family:monospace;margin:10px 0;font-size:13px}
    </style>
</head>
<body>
    <div class="box">
        <h1> ${titre}</h1>
        
        <div class="info">
            <strong> Sprint 10 - Test 3 :</strong> Upload + Objet (Sprint 8-bis + Sprint 10)<br>
            Le framework va binder l'objet Employee ET injecter le fichier CV !
        </div>

        <div class="code">
            <strong>Contrôleur :</strong><br>
            @PostUrl("/sprint10/upload-with-object")<br>
            public ModelView uploadWithObject(<br>
            &nbsp;&nbsp;<span style="color:#3498db">Employee e</span>,  ← Sprint 8-bis<br>
            &nbsp;&nbsp;<span style="color:#e74c3c">FileUpload cv</span>  ← Sprint 10<br>
            ) { ... }
        </div>

        <form action="/test-framework-mvc/sprint10/upload-with-object" 
              method="POST" 
              enctype="multipart/form-data">
            
            <div class="section">
                <h3 style="margin-top:0;color:#9b59b6"> Informations de l'employé</h3>
                
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
                    <input type="number" step="0.01" name="e.salaire" value="3500000">
                </div>
            </div>

            <div class="section" style="border-left-color:#e74c3c">
                <h3 style="margin-top:0;color:#e74c3c">📄 Curriculum Vitae</h3>
                
                <div class="form-group">
                    <label>Fichier CV (name="cv") :</label>
                    <input type="file" name="cv" accept=".pdf,.doc,.docx" required>
                </div>
            </div>
            
            <button type="submit">📤 Enregistrer employé + CV</button>
        </form>

        <div style="background:#e7f3ff;padding:15px;border-radius:8px;margin:20px 0">
            <strong> Magie du framework :</strong>
            <ul style="margin:10px 0">
                <li> Le framework binde l'objet <code>Employee</code> (Sprint 8-bis)</li>
                <li> Il extrait le fichier CV uploadé (Sprint 10)</li>
                <li> Le contrôleur reçoit : <code>e.nom</code>, <code>e.age</code>, <code>cv</code></li>
                <li> Le CV sera sauvegardé avec le nom : <code>cv_Jean_Rakoto.pdf</code></li>
            </ul>
        </div>

        <p style="margin-top:20px">
            <a href="/test-framework-mvc/sprint10/form-multiple" style="color:#9b59b6">← Test 2</a> |
            <a href="/test-framework-mvc/sprint10/form-with-map" style="color:#9b59b6">Test 4 →</a>
        </p>
    </div>
</body>
</html>