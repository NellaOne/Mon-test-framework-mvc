<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Test Types - Sprint 6</title>
    <style>
        body { font-family: Arial; margin: 40px; background: #e3f2fd; }
        .container { background: white; padding: 30px; border-radius: 10px; max-width: 700px; margin: 0 auto; }
        h1 { color: #1976d2; }
        .data-grid { display: grid; grid-template-columns: 150px 150px 1fr; gap: 15px; margin: 20px 0; background: #f8f9fa; padding: 15px; border-radius: 8px; }
        .label { font-weight: bold; }
        .type { color: #666; font-style: italic; }
        .value { color: #1976d2; }
    </style>
</head>
<body>
    <div class="container">
        <h1>🧪 Test des Types - Sprint 6</h1>
        
        <h3>📋 Paramètres Reçus</h3>
        <div class="data-grid">
            <div class="label">Texte :</div>
            <div class="type">(String)</div>
            <div class="value">${texte == null ? 'Non fourni' : texte}</div>
            
            <div class="label">Nombre :</div>
            <div class="type">(Integer)</div>
            <div class="value">${nombre == null ? 'Non fourni' : nombre}</div>
            
            <div class="label">Prix :</div>
            <div class="type">(Double)</div>
            <div class="value">${prix == null ? 'Non fourni' : prix}</div>
            
            <div class="label">Actif :</div>
            <div class="type">(Boolean)</div>
            <div class="value">${actif == null ? 'Non fourni' : actif}</div>
        </div>
        
        <div style="background: #d4edda; padding: 15px; border-radius: 8px; margin-top: 20px;">
            <p>✅ Sprint 6 : Conversion automatique des types !</p>
            <ul>
                <li>String → String</li>
                <li>String → Integer</li>
                <li>String → Double</li>
                <li>String → Boolean</li>
            </ul>
        </div>
    </div>
</body>
</html>