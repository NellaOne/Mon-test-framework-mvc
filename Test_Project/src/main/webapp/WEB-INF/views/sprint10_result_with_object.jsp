<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="mg.etu3273.test.model.Employee" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>${titre}</title>
    <style>
        body{font-family:Arial;margin:40px;background:#27ae60}
        .box{background:white;padding:30px;border-radius:10px;max-width:700px;margin:0 auto}
        h1{color:#27ae60}
        .success{background:#d4edda;padding:20px;border-radius:8px;margin:20px 0;border-left:4px solid#27ae60}
        .error{background:#f8d7da;padding:20px;border-radius:8px;margin:20px 0;border-left:4px solid#e74c3c;color:#721c24}
        table{width:100%;border-collapse:collapse;margin:15px 0}
        th{background:#27ae60;color:white;padding:12px;text-align:left}
        td{padding:10px;border-bottom:1px solid #ddd}
        .section{background:#f8f9fa;padding:15px;border-radius:8px;margin:15px 0}
    </style>
</head>
<body>
    <div class="box">
        <h1> ${titre}</h1>
        
        <% 
            Employee employee = (Employee) request.getAttribute("employee");
            Boolean success = (Boolean) request.getAttribute("success");
            
            if (success != null && success && employee != null) {
        %>
        
        <div class="success">
            <h3 style="margin-top:0"> Employé enregistré avec succès !</h3>
        </div>

        <div class="section">
            <h3 style="margin-top:0;color:#3498db"> Données de l'employé (Sprint 8-bis)</h3>
            <table>
                <tr>
                    <th>Attribut</th>
                    <th>Valeur</th>
                </tr>
                <tr>
                    <td><strong>Nom</strong></td>
                    <td><%= employee.getNom() %></td>
                </tr>
                <tr>
                    <td><strong>Âge</strong></td>
                    <td><%= employee.getAge() != null ? employee.getAge() + " ans" : "N/A" %></td>
                </tr>
                <tr>
                    <td><strong>Salaire</strong></td>
                    <td><%= employee.getSalaire() != null ? String.format("%.2f Ar", employee.getSalaire()) : "N/A" %></td>
                </tr>
            </table>
        </div>

        <div class="section" style="background:#e8f5e9">
            <h3 style="margin-top:0;color:#e74c3c">📄 Fichier CV (Sprint 10)</h3>
            <table>
                <tr>
                    <th>Information</th>
                    <th>Valeur</th>
                </tr>
                <tr>
                    <td><strong>Nom original</strong></td>
                    <td>${cvName}</td>
                </tr>
                <tr>
                    <td><strong>Taille</strong></td>
                    <td>${cvSize}</td>
                </tr>
                <tr>
                    <td><strong>Sauvegardé sous</strong></td>
                    <td><code>${savedPath}</code></td>
                </tr>
            </table>
        </div>

        <div style="background:#e7f3ff;padding:20px;border-radius:8px;margin:20px 0">
            <strong> Ce qui s'est passé :</strong>
            <ol style="margin:10px 0;line-height:1.8">
                <li>Le framework a bindé l'objet <code>Employee</code> depuis les champs <code>e.nom</code>, <code>e.age</code>, <code>e.salaire</code></li>
                <li>Il a extrait le fichier CV uploadé</li>
                <li>Il a créé un <code>FileUpload</code> avec le nom et le contenu</li>
                <li>Il a injecté les 2 paramètres : <code>Employee e</code> et <code>FileUpload cv</code></li>
                <li>Le contrôleur a renommé le CV : <code>cv_<%= employee.getNom().replace(" ", "_") %>.xxx</code></li>
                <li>Le fichier a été sauvegardé sur le serveur !</li>
            </ol>
        </div>
        
        <% } else { %>
        
        <div class="error">
            <h3 style="margin-top:0"> Erreur</h3>
            <p>${error}</p>
        </div>
        
        <% } %>

        <p>
            <a href="/test-framework-mvc/sprint10/form-with-object" style="color:#27ae60;font-weight:bold">← Retour au formulaire</a>
        </p>
    </div>
</body>
</html>