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
        .info{background:#f8d7da;padding:15px;border-radius:8px;margin-bottom:20px;border-left:4px solid#e74c3c}
        .form-group{margin:15px 0}
        label{display:block;font-weight:bold;margin-bottom:5px}
        input[type="text"], input[type="number"]{width:100%;padding:10px;border:2px solid #ddd;border-radius:5px;box-sizing:border-box}
        button{background:#e74c3c;color:white;padding:12px 30px;border:none;border-radius:5px;cursor:pointer;margin-top:15px}
        button:hover{background:#c0392b}
        .checkbox-group{padding:15px;border:2px dashed #ddd;border-radius:8px;background:#fafafa}
        .checkbox-item{display:block;margin:10px 0}
        .code{background:#f8f9fa;padding:10px;border-radius:5px;font-family:monospace;margin:10px 0;font-size:13px}
    </style>
</head>
<body>
    <div class="box">
        <h1>🚀 ${titre}</h1>
        
        <div class="info">
            <strong>🎯 Sprint 8-bis - Test 4 :</strong> Binding de listes/tableaux<br>
            Le framework va remplir automatiquement <code>List&lt;String&gt; hobbies</code> !
        </div>

        <div class="code">
            <strong>Classe :</strong><br>
            class Employee {<br>
            &nbsp;&nbsp;String nom;<br>
            &nbsp;&nbsp;<span style="color:#e74c3c">List&lt;String&gt; hobbies;</span> // ← Liste !<br>
            }
        </div>

        <form action="/test-framework-mvc/sprint8bis/save-list" method="POST">
            <div class="form-group">
                <label>Nom (e.nom) :</label>
                <input type="text" name="e.nom" value="Paul Randria" required>
            </div>
            
            <div class="form-group">
                <label>Âge (e.age) :</label>
                <input type="number" name="e.age" value="25">
            </div>

            <div class="form-group">
                <label>Hobbies (cochez plusieurs) :</label>
                <div class="checkbox-group">
                    <label class="checkbox-item">
                        <input type="checkbox" name="e.hobbies" value="Lecture" checked> 📚 Lecture
                    </label>
                    <label class="checkbox-item">
                        <input type="checkbox" name="e.hobbies" value="Sport" checked> ⚽ Sport
                    </label>
                    <label class="checkbox-item">
                        <input type="checkbox" name="e.hobbies" value="Musique"> 🎵 Musique
                    </label>
                    <label class="checkbox-item">
                        <input type="checkbox" name="e.hobbies" value="Cuisine"> 🍳 Cuisine
                    </label>
                    <label class="checkbox-item">
                        <input type="checkbox" name="e.hobbies" value="Voyage"> ✈️ Voyage
                    </label>
                </div>
            </div>
            
            <button type="submit">💾 Enregistrer (avec liste)</button>
        </form>

        <div style="margin-top:20px;background:#fff3cd;padding:15px;border-radius:8px;border-left:4px solid#f39c12">
            <strong>📋 Deux méthodes supportées :</strong>
            <ol style="margin:10px 0">
                <li><strong>Checkboxes</strong> : <code>&lt;input name="e.hobbies" value="Lecture"&gt;</code></li>
                <li><strong>Index</strong> : <code>&lt;input name="e.hobbies[0]" value="Lecture"&gt;</code></li>
            </ol>
            Le framework détecte automatiquement la méthode utilisée !
        </div>

        <div style="margin-top:20px;background:#e7f3ff;padding:15px;border-radius:8px">
            <strong>✨ Magie du framework :</strong>
            <ul style="margin:10px 0">
                <li>✅ Détecte que <code>hobbies</code> est une <code>List&lt;String&gt;</code></li>
                <li>✅ Récupère toutes les valeurs cochées</li>
                <li>✅ Crée automatiquement une <code>ArrayList&lt;&gt;()</code></li>
                <li>✅ L'associe à l'employé avec <code>e.setHobbies(list)</code></li>
            </ul>
        </div>

        <p style="margin-top:20px">
            <a href="/test-framework-mvc/sprint8bis/form-nested" style="color:#e74c3c">← Test 2</a> |
            <a href="/test-framework-mvc/sprint8bis/form-complete" style="color:#e74c3c">Test 5 →</a>
        </p>
    </div>
</body>
</html>