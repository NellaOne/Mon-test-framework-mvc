<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Framework MVC - Tests</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            padding: 40px 20px;
        }
        
        .container {
            max-width: 1200px;
            margin: 0 auto;
        }
        
        h1 {
            text-align: center;
            color: white;
            margin-bottom: 10px;
            font-size: 2.5em;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
        }
        
        .subtitle {
            text-align: center;
            color: #f0f0f0;
            margin-bottom: 40px;
            font-size: 1.2em;
        }
        
        .grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 20px;
            margin-bottom: 30px;
        }
        
        .card {
            background: white;
            border-radius: 12px;
            padding: 25px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.3);
            transition: transform 0.3s, box-shadow 0.3s;
        }
        
        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 40px rgba(0,0,0,0.4);
        }
        
        .card h2 {
            color: #667eea;
            margin-bottom: 15px;
            font-size: 1.5em;
            display: flex;
            align-items: center;
            gap: 10px;
        }
        
        .badge {
            display: inline-block;
            padding: 4px 12px;
            border-radius: 20px;
            font-size: 12px;
            font-weight: bold;
            color: white;
        }
        
        .badge-new {
            background: #e74c3c;
            animation: pulse 2s infinite;
        }
        
        @keyframes pulse {
            0%, 100% { opacity: 1; }
            50% { opacity: 0.7; }
        }
        
        .badge-done {
            background: #27ae60;
        }
        
        .card p {
            color: #666;
            line-height: 1.6;
            margin-bottom: 15px;
        }
        
        .links {
            display: flex;
            flex-direction: column;
            gap: 8px;
        }
        
        .btn {
            display: inline-block;
            padding: 10px 20px;
            background: #667eea;
            color: white;
            text-decoration: none;
            border-radius: 6px;
            text-align: center;
            transition: background 0.3s;
            font-weight: 500;
        }
        
        .btn:hover {
            background: #5568d3;
        }
        
        .btn-secondary {
            background: #95a5a6;
        }
        
        .btn-secondary:hover {
            background: #7f8c8d;
        }
        
        .highlight {
            background: #fff3cd;
            border-left: 4px solid #f39c12;
            padding: 20px;
            border-radius: 8px;
            margin-top: 30px;
        }
        
        .highlight h3 {
            color: #f39c12;
            margin-bottom: 10px;
        }
        
        .sprint8bis-section {
            background: linear-gradient(135deg, #f39c12 0%, #e74c3c 100%);
            padding: 30px;
            border-radius: 12px;
            margin-top: 30px;
            color: white;
        }
        
        .sprint8bis-section h2 {
            color: white;
            margin-bottom: 20px;
            font-size: 2em;
        }
        
        .sprint8bis-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 15px;
            margin-top: 20px;
        }
        
        .sprint8bis-card {
            background: rgba(255, 255, 255, 0.2);
            backdrop-filter: blur(10px);
            padding: 20px;
            border-radius: 8px;
            border: 2px solid rgba(255, 255, 255, 0.3);
        }
        
        .sprint8bis-card h4 {
            margin-bottom: 10px;
            font-size: 1.2em;
        }
        
        .sprint8bis-card .btn {
            background: white;
            color: #f39c12;
            margin-top: 10px;
        }
        
        .sprint8bis-card .btn:hover {
            background: #f0f0f0;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Framework MVC - Tests Complets</h1>
        <p class="subtitle">Projet ETU3273 - Tous les Sprints</p>
        
        <div class="grid">
            <div class="card">
                <h2>Sprint 1-2 <span class="badge badge-done">✓</span></h2>
                <p>Mapping URL → Méthode et scan automatique des contrôleurs annotés.</p>
                <div class="links">
                    <a href="/test-framework-mvc/test/hello" class="btn">Test Hello</a>
                    <a href="/test-framework-mvc/test/list" class="btn">Test List</a>
                </div>
            </div>
            
            <div class="card">
                <h2>Sprint 4-5 <span class="badge badge-done">✓</span></h2>
                <p>Invocation par réflexion, ModelView, et transfert de données vers JSP.</p>
                <div class="links">
                    <a href="/test-framework-mvc/test/view" class="btn">Test ModelView</a>
                    <a href="/test-framework-mvc/test/data" class="btn">Test Données</a>
                </div>
            </div>
            
            <div class="card">
                <h2>Sprint 6 <span class="badge badge-done">✓</span></h2>
                <p>Injection automatique des paramètres HTTP (noms identiques) et @RequestParam.</p>
                <div class="links">
                    <a href="/test-framework-mvc/test/form" class="btn">Formulaire Simple</a>
                    <a href="/test-framework-mvc/test/{id}" class="btn">URL Dynamique</a>
                </div>
            </div>
            
            <div class="card">
                <h2>Sprint 7 <span class="badge badge-done">✓</span></h2>
                <p>Séparation GET/POST avec @GetUrl et @PostUrl sur la même URL.</p>
                <div class="links">
                    <a href="/test-framework-mvc/sprint7/form" class="btn">Test GET/POST</a>
                    <a href="/test-framework-mvc/sprint7/hello" class="btn">Test Hello GET</a>
                </div>
            </div>
            
            <div class="card">
                <h2>Sprint 8 <span class="badge badge-done">✓</span></h2>
                <p>Injection automatique dans Map&lt;String, Object&gt; avec support des checkboxes.</p>
                <div class="links">
                    <a href="/test-framework-mvc/test/sprint8-form" class="btn">Formulaire Map</a>
                    <a href="/test-framework-mvc/test/save-map" class="btn-secondary btn">Test Direct</a>
                </div>
            </div>
        </div>
        
        <div class="sprint8bis-section">
            <h2>Sprint 8-bis : Binding d'Objets Complexes <span class="badge badge-new">NOUVEAU</span></h2>
            <p style="font-size:1.1em;margin-bottom:20px">
                Injection automatique d'objets Java complets avec support des objets imbriqués, 
                listes/tableaux, et conversions de types automatiques !
            </p>
            
            <div class="sprint8bis-grid">
                <div class="sprint8bis-card">
                    <h4> Test 1 : Objet Simple</h4>
                    <p>Employee avec attributs simples (nom, age, salaire)</p>
                    <a href="/test-framework-mvc/sprint8bis/form-simple" class="btn">Tester →</a>
                </div>
                
                <div class="sprint8bis-card">
                    <h4> Test 2 : Objet Imbriqué</h4>
                    <p>Employee avec Department imbriqué (e.department.nom)</p>
                    <a href="/test-framework-mvc/sprint8bis/form-nested" class="btn">Tester →</a>
                </div>
                
                <div class="sprint8bis-card">
                    <h4> Test 3 : Plusieurs Objets</h4>
                    <p>Injection de 3 paramètres : Employee, Department, Integer</p>
                    <a href="/test-framework-mvc/sprint8bis/form-multiple" class="btn">Tester →</a>
                </div>
                
                <div class="sprint8bis-card">
                    <h4> Test 4 : Listes/Tableaux</h4>
                    <p>Employee avec List&lt;String&gt; hobbies (checkboxes)</p>
                    <a href="/test-framework-mvc/sprint8bis/form-list" class="btn">Tester →</a>
                </div>
                
                <div class="sprint8bis-card">
                    <h4>Test 5 : Tout Combiné</h4>
                    <p>Objet + imbriqué + liste + paramètres simples</p>
                    <a href="/test-framework-mvc/sprint8bis/form-advanced" class="btn">Tester →</a>
                </div>
            </div>
        </div>
        
        <div class="highlight">
            <h3> Fonctionnalités Sprint 8-bis</h3>
            <ul style="list-style-position: inside; line-height: 2;">
                <li>Création automatique d'instances d'objets</li>
                <li>Remplissage automatique des attributs depuis le formulaire</li>
                <li>Conversion automatique des types (String → Integer, Double, etc.)</li>
                <li>Support des objets imbriqués (Employee.department.nom)</li>
                <li>Support des listes/tableaux (Employee.hobbies[])</li>
                <li>Injection de plusieurs objets simultanément</li>
                <li>Naming convention simple : prefix.attribut (e.nom, d.code, etc.)</li>
            </ul>
        </div>
    </div>
</body>
</html>