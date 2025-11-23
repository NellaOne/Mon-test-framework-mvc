<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Détail Étudiant - Sprint 3-bis</title>
    <style>
        body { font-family: Arial; margin: 40px; background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); }
        .container { background: white; padding: 40px; border-radius: 15px; max-width: 800px; margin: 0 auto; box-shadow: 0 10px 30px rgba(0,0,0,0.3); }
        h1 { color: #2c3e50; border-bottom: 3px solid #667eea; padding-bottom: 15px; }
        .success { background: #d4edda; color: #155724; padding: 20px; border-radius: 8px; margin: 20px 0; border-left: 5px solid #28a745; }
        .info { background: #d1ecf1; color: #0c5460; padding: 15px; border-radius: 8px; margin: 15px 0; }
        .warning { background: #fff3cd; color: #856404; padding: 15px; border-radius: 8px; margin: 15px 0; border-left: 5px solid #ffc107; }
        .code { background: #f8f9fa; padding: 10px; border-radius: 5px; font-family: 'Courier New', monospace; margin: 10px 0; }
        .badge { display: inline-block; padding: 5px 10px; background: #667eea; color: white; border-radius: 12px; font-size: 14px; }
    </style>
</head>
<body>
    <div class="container">
        <h1>🎓 ${message}</h1>
        
        <div class="success">
            <h2 style="margin-top: 0;">✅ Sprint 3-bis Réussi !</h2>
            <p>L'URL avec paramètre dynamique <strong>{}</strong> a été reconnue et matchée correctement.</p>
        </div>
        
        <div class="info">
            <h3>📋 Informations de Mapping</h3>
            <p><strong>URL Pattern :</strong> <span class="code">${urlPattern}</span></p>
            <p><strong>Valeur du paramètre id :</strong> 
                <span class="code">${idRecuActuel == null ? 'null (normal pour Sprint 3-bis)' : idRecuActuel}</span>
            </p>
        </div>
        
        <div class="warning">
            <h3>⚠️ Note Importante</h3>
            <p>${noteImportante}</p>
            <p>Actuellement, le système reconnaît l'URL et exécute la bonne méthode, mais les valeurs des paramètres ne sont pas encore extraites.</p>
        </div>
        
        <div class="info">
            <h3>✅ Fonctionnalités Sprint 3-bis</h3>
            <ul>
                <li>✅ URLs avec <code>{}</code> sont acceptées</li>
                <li>✅ Matching dynamique avec regex</li>
                <li>✅ Méthode correcte est invoquée</li>
                <li>✅ Pas d'erreur 404</li>
                <li>⏳ Extraction des valeurs (Sprint 6-ter)</li>
            </ul>
        </div>
        
        <div style="margin-top: 30px; padding: 15px; background: #e7f3ff; border-radius: 8px;">
            <h3>🧪 URLs de Test</h3>
            <ul>
                <li><a href="/test-framework-mvc/etudiant/17">/etudiant/17</a></li>
                <li><a href="/test-framework-mvc/etudiant/25">/etudiant/25</a></li>
                <li><a href="/test-framework-mvc/dept/5">/dept/5</a></li>
                <li><a href="/test-framework-mvc/product/100">/product/100</a></li>
            </ul>
            <p><em>Toutes ces URLs matcheront leurs patterns respectifs !</em></p>
        </div>
    </div>
</body>
</html>
