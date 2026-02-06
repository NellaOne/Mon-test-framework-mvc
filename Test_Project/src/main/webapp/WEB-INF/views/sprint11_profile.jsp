<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sprint 11 - Profil</title>
    <style>
        body{font-family:Arial;margin:40px;background:#f5f5f5}
        .container{max-width:700px;margin:0 auto}
        .header{background:#27ae60;color:white;padding:30px;border-radius:10px;margin-bottom:20px}
        .card{background:white;padding:25px;border-radius:10px;margin-bottom:20px;box-shadow:0 2px 10px rgba(0,0,0,0.1)}
        h1{margin:0}
        .form-group{margin:15px 0}
        label{display:block;font-weight:bold;margin-bottom:5px}
        input{width:100%;padding:10px;border:2px solid #ddd;border-radius:5px;box-sizing:border-box}
        button{background:#27ae60;color:white;padding:12px 25px;border:none;border-radius:5px;cursor:pointer;font-weight:bold}
        button:hover{background:#229954}
        table{width:100%;border-collapse:collapse;margin-top:15px}
        th,td{padding:12px;text-align:left;border-bottom:1px solid #ddd}
        th{background:#f8f9fa;font-weight:bold}
        .back{display:inline-block;margin-top:15px;color:#27ae60;text-decoration:none;font-weight:bold}
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1> Mon Profil</h1>
        </div>
        
        <div class="card">
            <h2 style="margin-top:0"> Informations</h2>
            <p><strong>Username :</strong> ${username}</p>
            <p><strong>Email :</strong> ${email}</p>
        </div>
        
        <div class="card">
            <h2 style="margin-top:0"> Modifier Email</h2>
            <form action="/test-framework-mvc/sprint11/update-email" method="POST">
                <div class="form-group">
                    <label>Nouvel email :</label>
                    <input type="email" name="email" placeholder="votre@email.com" required>
                </div>
                <button type="submit"> Enregistrer</button>
            </form>
        </div>
        
        <div class="card">
            <h2 style="margin-top:0"> Toutes les Variables de Session</h2>
            <table>
                <tr>
                    <th>Clé</th>
                    <th>Valeur</th>
                </tr>
                <%
                    Map<String, Object> allData = (Map<String, Object>) request.getAttribute("allData");
                    if (allData != null) {
                        for (Map.Entry<String, Object> entry : allData.entrySet()) {
                %>
                <tr>
                    <td><code><%= entry.getKey() %></code></td>
                    <td><%= entry.getValue() %></td>
                </tr>
                <%
                        }
                    }
                %>
            </table>
        </div>
        
        <a href="/test-framework-mvc/sprint11/dashboard" class="back">← Retour au dashboard</a>
    </div>
</body>
</html>