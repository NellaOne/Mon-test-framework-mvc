<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>${titre}</title>
    <style>
        body{font-family:Arial;margin:40px;background:#e74c3c}
        .box{background:white;padding:30px;border-radius:10px;max-width:600px;margin:0 auto}
        h1{color:#e74c3c}
        .info{background:#fadbd8;padding:15px;border-radius:8px;margin-bottom:20px;border-left:4px solid#e74c3c}
        .form-group{margin:15px 0}
        label{display:block;font-weight:bold;margin-bottom:5px}
        input[type="text"], textarea{width:100%;padding:10px;border:2px solid #ddd;border-radius:5px;box-sizing:border-box}
        input[type="file"]{padding:10px 0}
        button{background:#e74c3c;color:white;padding:12px 30px;border:none;border-radius:5px;cursor:pointer;margin-top:15px;font-size:16px}
        button:hover{background:#c0392b}
        .code{background:#f8f9fa;padding:10px;border-radius:5px;font-family:monospace;margin:10px 0;font-size:13px}
        .warning{background:#fff3cd;padding:10px;border-radius:5px;margin:15px 0;border-left:4px solid#f39c12}
    </style>
</head>
<body>
    <div class="box">
        <h1> ${titre}</h1>
        
        <div class="info">
            <strong> Sprint 10 - Test 1 :</strong> Upload d'un fichier simple<br>
            Le fichier sera automatiquement injecté dans le paramètre <code>FileUpload</code> du contrôleur.
        </div>

        <div class="code">
            <strong>Contrôleur :</strong><br>
            @PostUrl("/sprint10/upload-single")<br>
            public ModelView uploadSingle(<span style="color:#e74c3c">FileUpload photo</span>, String description) {<br>
            &nbsp;&nbsp;String path = photo.saveTo("C:/uploads/");<br>
            }
        </div>

        <form action="/test-framework-mvc/sprint10/upload-single" 
              method="POST" 
              enctype="multipart/form-data">
            
            <div class="form-group">
                <label> Photo (name="photo") :</label>
                <input type="file" name="photo" accept="image/*" required>
            </div>
            
            <div class="form-group">
                <label> Description :</label>
                <textarea name="description" rows="3" placeholder="Décrivez votre photo..."></textarea>
            </div>
            
            <button type="submit"> Uploader</button>
        </form>

        <div class="warning">
            <strong> Important :</strong>
            <ul style="margin:10px 0">
                <li><strong>enctype="multipart/form-data"</strong> est OBLIGATOIRE !</li>
                <li>Le <strong>name="photo"</strong> doit correspondre au paramètre du contrôleur</li>
                <li>Le fichier sera sauvegardé dans <code>C:/uploads/</code></li>
            </ul>
        </div>

        <div style="background:#e7f3ff;padding:15px;border-radius:8px;margin:20px 0">
            <strong> Magie du framework :</strong>
            <ul style="margin:10px 0">
                <li> Le framework détecte <code>enctype="multipart/form-data"</code></li>
                <li> Il extrait le fichier avec <code>request.getParts()</code></li>
                <li> Il crée un objet <code>FileUpload</code> avec le nom et le contenu</li>
                <li> Il l'injecte automatiquement dans le paramètre <code>photo</code></li>
            </ul>
        </div>

        <p style="margin-top:20px">
            <a href="/test-framework-mvc/sprint10/form-multiple" style="color:#e74c3c">Test 2 : Upload multiple →</a>
        </p>
    </div>
</body>
</html>