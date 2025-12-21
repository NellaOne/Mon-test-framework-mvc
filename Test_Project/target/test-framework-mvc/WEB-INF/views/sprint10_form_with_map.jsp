<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>${titre}</title>
    <style>
        body{font-family:Arial;margin:40px;background:#f39c12}
        .box{background:white;padding:30px;border-radius:10px;max-width:700px;margin:0 auto}
        h1{color:#f39c12}
        .info{background:#fef5e7;padding:15px;border-radius:8px;margin-bottom:20px;border-left:4px solid#f39c12}
        .section{background:#f8f9fa;padding:20px;border-radius:8px;margin:20px 0;border-left:4px solid #f39c12}
        .form-group{margin:15px 0}
        label{display:block;font-weight:bold;margin-bottom:5px}
        input[type="text"], input[type="email"]{width:100%;padding:10px;border:2px solid #ddd;border-radius:5px;box-sizing:border-box}
        input[type="file"]{padding:10px 0}
        button{background:#f39c12;color:white;padding:12px 30px;border:none;border-radius:5px;cursor:pointer;margin-top:15px;font-size:16px}
        button:hover{background:#e67e22}
        .code{background:#f8f9fa;padding:10px;border-radius:5px;font-family:monospace;margin:10px 0;font-size:13px}
    </style>
</head>
<body>
    <div class="box">
        <h1> ${titre}</h1>
        
        <div class="info">
            <strong> Sprint 10 - Test 4 :</strong> Upload + Map (Sprint 8 + Sprint 10)<br>
            Tous les champs texte dans une Map + le fichier séparé !
        </div>

        <div class="code">
            <strong>Contrôleur :</strong><br>
            @PostUrl("/sprint10/upload-with-map")<br>
            public ModelView uploadWithMap(<br>
            &nbsp;&nbsp;<span style="color:#3498db">Map&lt;String, Object&gt; params</span>,  ← Sprint 8<br>
            &nbsp;&nbsp;<span style="color:#e74c3c">FileUpload fichier</span>  ← Sprint 10<br>
            ) { ... }
        </div>

        <form action="/test-framework-mvc/sprint10/upload-with-map" 
              method="POST" 
              enctype="multipart/form-data">
            
            <div class="section">
                <h3 style="margin-top:0;color:#f39c12">📋 Informations (dans la Map)</h3>
                
                <div class="form-group">
                    <label>Nom (name="nom") :</label>
                    <input type="text" name="nom" value="Marie Rasoa" required>
                </div>
                
                <div class="form-group">
                    <label>Email (name="email") :</label>
                    <input type="email" name="email" value="marie@example.com" required>
                </div>
                
                <div class="form-group">
                    <label>Téléphone (name="telephone") :</label>
                    <input type="text" name="telephone" value="034 12 345 67">
                </div>
            </div>

            <div class="section" style="border-left-color:#e74c3c">
                <h3 style="margin-top:0;color:#e74c3c">📎 Fichier joint</h3>
                
                <div class="form-group">
                    <label>Document (name="fichier") :</label>
                    <input type="file" name="fichier" required>
                </div>
            </div>
            
            <button type="submit"> Envoyer formulaire + fichier</button>
        </form>

        <div style="background:#e7f3ff;padding:15px;border-radius:8px;margin:20px 0">
            <strong> Magie du framework :</strong>
            <ul style="margin:10px 0">
                <li> Le framework construit une <code>Map&lt;String, Object&gt;</code> avec tous les champs texte (Sprint 8)</li>
                <li> Il extrait le fichier uploadé séparément (Sprint 10)</li>
                <li> Le contrôleur reçoit : <code>params</code> (Map) et <code>fichier</code> (FileUpload)</li>
                <li> <code>params.get("nom")</code> = "Marie Rasoa"</li>
                <li> <code>fichier.getName()</code> = "document.pdf"</li>
            </ul>
        </div>

        <p style="margin-top:20px">
            <a href="/test-framework-mvc/sprint10/form-with-object" style="color:#f39c12">← Test 3</a>
        </p>
    </div>
</body>
</html>