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
        .info{background:#d1ecf1;padding:15px;border-radius:8px;margin-bottom:20px;border-left:4px solid #3498db}
        .form-group{margin:15px 0}
        label{display:block;font-weight:bold;margin-bottom:5px}
        input[type="text"], input[type="number"], select{
            width:100%;padding:10px;border:2px solid #ddd;border-radius:5px;box-sizing:border-box
        }
        .checkbox-group{padding:10px;border:1px solid #eee;border-radius:6px;background:#fafafa}
        .checkbox-item{display:block;margin:8px 0}
        button{background:#3498db;color:white;padding:12px 30px;border:none;border-radius:5px;cursor:pointer;margin-top:15px;font-size:16px}
        button:hover{background:#2980b9}
        .test-section{border-top:2px dashed #ddd;margin-top:30px;padding-top:20px}
    </style>
</head>
<body>
    <div class="box">
        <h1>🚀 ${titre}</h1>
        
        <div class="info">
            <strong>🎯 Sprint 8 :</strong> Tous les paramètres du formulaire seront automatiquement 
            copiés dans une <code>Map&lt;String, Object&gt;</code> ! Le framework gère tout.
        </div>

        <!-- ========== TEST 1 : Map seule ========== -->
        <h3>Test 1 : Map&lt;String, Object&gt; uniquement</h3>
        <form action="save-map" method="post">
            <div class="form-group">
                <label>Nom :</label>
                <input type="text" name="nom" required>
            </div>
            
            <div class="form-group">
                <label>Âge :</label>
                <input type="number" name="age" required>
            </div>
            
            <div class="form-group">
                <label>Ville(s) - Cochez une ou plusieurs :</label>
                <div class="checkbox-group">
                    <label class="checkbox-item">
                        <input type="checkbox" name="ville" value="Antananarivo"> Antananarivo
                    </label>
                    <label class="checkbox-item">
                        <input type="checkbox" name="ville" value="Toamasina"> Toamasina
                    </label>
                    <label class="checkbox-item">
                        <input type="checkbox" name="ville" value="Fianarantsoa"> Fianarantsoa
                    </label>
                    <label class="checkbox-item">
                        <input type="checkbox" name="ville" value="Mahajanga"> Mahajanga
                    </label>
                </div>
            </div>
            
            <button type="submit">💾 Test avec Map seule</button>
        </form>

        <!-- ========== TEST 2 : Map + @RequestParam ========== -->
        <div class="test-section">
            <h3>Test 2 : Map + @RequestParam (Mode mixte) SANS @RequestParam)</h3>
            <form action="save-mixed" method="post">
                <div class="form-group">
                    <label>Nom :</label>
                    <input type="text" name="nom" required>
                </div>
                
                <div class="form-group">
                    <label>Âge :</label>
                    <input type="number" name="age" required>
                </div>
                
                <div class="form-group">
                    <label>Ville(s) :</label>
                    <div class="checkbox-group">
                        <label class="checkbox-item">
                            <input type="checkbox" name="ville" value="Antananarivo"> Antananarivo
                        </label>
                        <label class="checkbox-item">
                            <input type="checkbox" name="ville" value="Toamasina"> Toamasina
                        </label>
                    </div>
                </div>
                
                <div class="form-group">
                    <label>Priorité (paramètre séparé sans @RequestParam) :</label>
                    <select name="priority" required>
                        <option value="high">Haute</option>
                        <option value="medium">Moyenne</option>
                        <option value="low">Basse</option>
                    </select>
                </div>
                
                <button type="submit">💾 Test mode mixte (simple)</button>
            </form>
        </div>

        <div class="test-section">
            <h3>Test 3 : Map + Integer + String</h3>
            <form action="save-advanced" method="post">
                <div class="form-group">
                    <label>Nom :</label>
                    <input type="text" name="nom" required>
                </div>
                
                <div class="form-group">
                    <label>Ville(s) :</label>
                    <div class="checkbox-group">
                        <label class="checkbox-item">
                            <input type="checkbox" name="ville" value="Antananarivo"> Antananarivo
                        </label>
                        <label class="checkbox-item">
                            <input type="checkbox" name="ville" value="Toamasina"> Toamasina
                        </label>
                    </div>
                </div>
                
                <div class="form-group">
                    <label>ID (Integer, paramètre séparé) :</label>
                    <input type="number" name="id" value="123" required>
                </div>
                
                <div class="form-group">
                    <label>Action (String, paramètre séparé) :</label>
                    <input type="text" name="action" value="update" required>
                </div>
                
                <button type="submit">💾 Test mode avancé</button>
            </form>
        </div>


        <p style="margin-top:30px;color:#666;font-size:14px">
            ✅ Sprint 8 : Si vous cochez plusieurs villes, le framework stockera 
            automatiquement un tableau <code>String[]</code> dans la Map.
        </p>
    </div>
</body>
</html>