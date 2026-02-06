<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sprint 11 - Dashboard</title>
    <style>
        body{font-family:Arial;margin:40px;background:#f5f5f5}
        .container{max-width:900px;margin:0 auto}
        .header{background:linear-gradient(135deg, #667eea 0%, #764ba2 100%);color:white;padding:30px;border-radius:10px;margin-bottom:20px}
        .card{background:white;padding:25px;border-radius:10px;margin-bottom:20px;box-shadow:0 2px 10px rgba(0,0,0,0.1)}
        h1{margin:0;font-size:28px}
        .flash{background:#d4edda;color:#155724;padding:15px;border-radius:5px;margin-bottom:20px;border-left:4px solid #28a745}
        .info-grid{display:grid;grid-template-columns:repeat(2, 1fr);gap:15px;margin:20px 0}
        .info-item{background:#f8f9fa;padding:15px;border-radius:5px}
        .info-label{font-size:12px;color:#666;margin-bottom:5px}
        .info-value{font-size:18px;font-weight:bold;color:#333}
        .btn{display:inline-block;padding:12px 25px;background:#667eea;color:white;text-decoration:none;border-radius:5px;margin-right:10px;margin-top:10px}
        .btn:hover{background:#5568d3}
        .btn-danger{background:#e74c3c}
        .btn-danger:hover{background:#c0392b}
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1> Dashboard</h1>
            <p style="margin:10px 0 0 0">Bienvenue, <strong>${username}</strong> !</p>
        </div>
        
        <% if (request.getAttribute("flash") != null && !((String)request.getAttribute("flash")).isEmpty()) { %>
        <div class="flash">
             ${flash}
        </div>
        <% } %>
        
        <div class="card">
            <h2 style="margin-top:0"> Informations de Session</h2>
            
            <div class="info-grid">
                <div class="info-item">
                    <div class="info-label">USERNAME</div>
                    <div class="info-value">${username}</div>
                </div>
                
                <div class="info-item">
                    <div class="info-label">RÔLE</div>
                    <div class="info-value">${role}</div>
                </div>
                
                <div class="info-item">
                    <div class="info-label">SESSION ID</div>
                    <div class="info-value" style="font-size:14px">${sessionId}</div>
                </div>
                
                <div class="info-item">
                    <div class="info-label">STATUT</div>
                    <div class="info-value" style="color:#28a745"> Connecté</div>
                </div>
            </div>
        </div>
        
        <div class="card">
            <h2 style="margin-top:0"> Actions</h2>
            
            <a href="/test-framework-mvc/sprint11/profile" class="btn">👤 Mon Profil</a>
            <a href="/test-framework-mvc/sprint11/test-raw" class="btn">🔧 Test Raw Session</a>
            
            <form action="/test-framework-mvc/sprint11/logout" method="POST" style="display:inline">
                <button type="submit" class="btn btn-danger">🚪 Déconnexion</button>
            </form>
        </div>
        
        <div class="card" style="background:#e7f3ff;border-left:4px solid #3498db">
            <strong> Sprint 11 testé :</strong>
            <ul style="margin:10px 0;line-height:1.8">
                <li><code>@SessionAttribute("username")</code> → ${username}</li>
                <li><code>@SessionAttribute("role")</code> → ${role}</li>
                <li><code>SessionManager.flash()</code> → Message flash affiché</li>
                <li><code>SessionManager.getId()</code> → ${sessionId}</li>
            </ul>
        </div>
    </div>
</body>
</html>