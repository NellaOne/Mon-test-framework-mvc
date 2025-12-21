<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="mg.etu3273.test.model.Employee" %>
<%@ page import="java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>${titre}</title>
    <style>
        body{
            font-family:Arial;
            margin:40px;
            background:linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height:100vh;
        }
        .box{
            background:white;
            padding:30px;
            border-radius:10px;
            max-width:900px;
            margin:0 auto;
            box-shadow:0 10px 40px rgba(0,0,0,0.3);
        }
        h1{
            color:#667eea;
            margin:0 0 20px 0;
            font-size:2em;
        }
        .badge{
            background:linear-gradient(135deg, #f39c12 0%, #e74c3c 100%);
            color:white;
            padding:8px 20px;
            border-radius:20px;
            display:inline-block;
            margin-bottom:20px;
            font-weight:bold;
        }
        .success-banner{
            background:linear-gradient(135deg, #11998e 0%, #38ef7d 100%);
            color:white;
            padding:20px;
            border-radius:8px;
            margin:20px 0;
            font-size:18px;
            text-align:center;
            font-weight:bold;
        }
        .error-banner{
            background:linear-gradient(135deg, #e74c3c 0%, #c0392b 100%);
            color:white;
            padding:20px;
            border-radius:8px;
            margin:20px 0;
            font-size:18px;
            text-align:center;
            font-weight:bold;
        }
        .section{
            background:#f8f9fa;
            padding:20px;
            border-radius:8px;
            margin:20px 0;
            border-left:4px solid #667eea;
        }
        .section-employee{border-left-color:#e74c3c}
        .section-meta{border-left-color:#3498db}
        .section-file{border-left-color:#27ae60}
        h3{
            margin-top:0;
            color:#667eea;
        }
        table{
            width:100%;
            border-collapse:collapse;
            margin:15px 0;
        }
        th{
            background:#667eea;
            color:white;
            padding:12px;
            text-align:left;
            font-weight:bold;
        }
        td{
            padding:10px 12px;
            border-bottom:1px solid #ddd;
        }
        .key{
            font-weight:bold;
            color:#555;
            width:35%;
        }
        .value{
            color:#333;
        }
        .file-info{
            background:white;
            padding:15px;
            border-radius:5px;
            margin:10px 0;
        }
        .path{
            background:#f8f9fa;
            padding:10px;
            border-radius:5px;
            word-break:break-all;
            font-family:monospace;
            font-size:13px;
            color:#e74c3c;
            margin:10px 0;
        }
        .recap{
            background:linear-gradient(135deg, #e0c3fc 0%, #8ec5fc 100%);
            padding:20px;
            border-radius:8px;
            margin:20px 0;
        }
        .back-link{
            display:inline-block;
            background:#667eea;
            color:white;
            padding:12px 30px;
            border-radius:5px;
            text-decoration:none;
            margin-top:20px;
            font-weight:bold;
            transition:all 0.3s;
        }
        .back-link:hover{
            background:#764ba2;
            transform:translateY(-2px);
            box-shadow:0 4px 15px rgba(102,126,234,0.4);
        }
        .icon{font-size:24px;margin-right:5px}
    </style>
</head>
<body>
    <div class="box">
        <h1> ${titre}</h1>
        <span class="badge">TEST ULTIME : Sprint 8 + 8-bis + 10</span>
        
        <%
            Boolean success = (Boolean) request.getAttribute("success");
            String error = (String) request.getAttribute("error");
            Employee employee = (Employee) request.getAttribute("employee");
            Map<String, Object> meta = (Map<String, Object>) request.getAttribute("meta");
            String cvName = (String) request.getAttribute("cvName");
            String cvSize = (String) request.getAttribute("cvSize");
            String savedPath = (String) request.getAttribute("savedPath");
        %>
        
        <!-- Bannière de succès/erreur -->
        <% if (success != null && success) { %>
        <div class="success-banner">
            <span class="icon"></span> SUCCÈS TOTAL ! Toutes les données ont été traitées et le CV a été sauvegardé !
        </div>
        <% } else { %>
        <div class="error-banner">
            <span class="icon"></span> Erreur : <%= error != null ? error : "Une erreur est survenue" %>
        </div>
        <% } %>

        <!-- Section 1 : Employee (Sprint 8-bis) -->
        <div class="section section-employee">
            <h3><span class="icon"></span> Employé (Sprint 8-bis : Objet)</h3>
            <% if (employee != null) { %>
            <table>
                <tr>
                    <th>Attribut</th>
                    <th>Valeur</th>
                </tr>
                <tr>
                    <td class="key">Nom</td>
                    <td class="value"><%= employee.getNom() %></td>
                </tr>
                <tr>
                    <td class="key">Âge</td>
                    <td class="value"><%= employee.getAge() != null ? employee.getAge() + " ans" : "<em>non renseigné</em>" %></td>
                </tr>
                <tr>
                    <td class="key">Salaire</td>
                    <td class="value"><%= employee.getSalaire() != null ? String.format("%.2f Ar", employee.getSalaire()) : "<em>non renseigné</em>" %></td>
                </tr>
            </table>
            <div style="background:#fff3cd;padding:10px;border-radius:5px;margin-top:10px;font-size:14px">
                <strong> Sprint 8-bis :</strong> L'objet Employee a été automatiquement créé et rempli depuis les champs <code>e.nom</code>, <code>e.age</code>, <code>e.salaire</code>
            </div>
            <% } else { %>
            <p style="color:#e74c3c"> Aucun objet Employee reçu</p>
            <% } %>
        </div>

        <!-- Section 2 : Métadonnées (Sprint 8) -->
        <div class="section section-meta">
            <h3><span class="icon"></span> Métadonnées (Sprint 8 : Map&lt;String, Object&gt;)</h3>
            <% if (meta != null && !meta.isEmpty()) { %>
            <table>
                <tr>
                    <th>Clé</th>
                    <th>Valeur</th>
                    <th>Type</th>
                </tr>
                <%
                    for (Map.Entry<String, Object> entry : meta.entrySet()) {
                        String key = entry.getKey();
                        Object value = entry.getValue();
                        String displayValue = "";
                        String type = "";
                        
                        if (value == null) {
                            displayValue = "<em>null</em>";
                            type = "null";
                        } else if (value instanceof String[]) {
                            String[] arr = (String[]) value;
                            displayValue = String.join(", ", arr);
                            type = "String[]";
                        } else {
                            displayValue = value.toString();
                            type = value.getClass().getSimpleName();
                        }
                %>
                <tr>
                    <td class="key"><%= key %></td>
                    <td class="value"><%= displayValue %></td>
                    <td style="color:#666;font-size:13px"><%= type %></td>
                </tr>
                <%
                    }
                %>
            </table>
            <div style="background:#d1ecf1;padding:10px;border-radius:5px;margin-top:10px;font-size:14px">
                <strong> Sprint 8 :</strong> La Map a été automatiquement construite depuis tous les champs <code>meta.*</code> du formulaire
            </div>
            <% } else { %>
            <p style="color:#e74c3c"> Aucune métadonnée reçue</p>
            <% } %>
        </div>

        <!-- Section 3 : CV (Sprint 10) -->
        <div class="section section-file">
            <h3><span class="icon"></span> CV (Sprint 10 : FileUpload)</h3>
            <% if (cvName != null) { %>
            <div class="file-info">
                <table>
                    <tr>
                        <th>Information</th>
                        <th>Détail</th>
                    </tr>
                    <tr>
                        <td class="key">Nom du fichier</td>
                        <td class="value"><strong><%= cvName %></strong></td>
                    </tr>
                    <tr>
                        <td class="key">Taille</td>
                        <td class="value"><%= cvSize %></td>
                    </tr>
                    <% if (savedPath != null) { %>
                    <tr>
                        <td class="key">Sauvegardé sous</td>
                        <td class="value">
                            <div class="path"><%= savedPath %></div>
                        </td>
                    </tr>
                    <% } %>
                </table>
            </div>
            <div style="background:#d4edda;padding:10px;border-radius:5px;margin-top:10px;font-size:14px">
                <strong> Sprint 10 :</strong> Le fichier a été automatiquement extrait de la requête multipart, injecté dans le contrôleur en tant que <code>FileUpload</code>, puis sauvegardé sur le serveur
            </div>
            <% } else { %>
            <p style="color:#e74c3c"> Aucun CV uploadé</p>
            <% } %>
        </div>

        <!-- Récapitulatif -->
        <div class="recap">
            <h3 style="margin-top:0;color:#333"><span class="icon"></span> Récapitulatif du Test Ultime</h3>
            <ol style="line-height:1.8;font-size:15px">
                <li><strong>Sprint 8-bis :</strong> Objet <code>Employee</code> créé et rempli automatiquement </li>
                <li><strong>Sprint 8 :</strong> <code>Map&lt;String, Object&gt;</code> construite depuis les champs <code>meta.*</code> </li>
                <li><strong>Sprint 10 :</strong> Fichier CV extrait et sauvegardé sur le serveur </li>
                <li><strong>Résultat :</strong> 
                    <% if (success != null && success) { %>
                        <span style="color:#27ae60;font-weight:bold">TOUS LES SPRINTS FONCTIONNENT ENSEMBLE ! 🎉</span>
                    <% } else { %>
                        <span style="color:#e74c3c;font-weight:bold">Une erreur est survenue</span>
                    <% } %>
                </li>
            </ol>
        </div>

        <!-- Informations techniques -->
        <div style="background:#f8f9fa;padding:20px;border-radius:8px;margin:20px 0;border:2px solid #667eea">
            <h4 style="margin-top:0;color:#667eea"> Ce que le framework a fait :</h4>
            <ol style="line-height:2;font-size:14px">
                <li>Détecté la requête <code>multipart/form-data</code></li>
                <li>Analysé les paramètres : <code>e.nom</code>, <code>e.age</code>, <code>e.salaire</code>, <code>meta.email</code>, <code>meta.telephone</code>, <code>meta.commentaire</code>, <code>cv</code></li>
                <li>Créé un objet <code>Employee e = new Employee()</code></li>
                <li>Rempli <code>e.nom</code>, <code>e.age</code>, <code>e.salaire</code> depuis les paramètres</li>
                <li>Créé une <code>Map&lt;String, Object&gt; meta = new HashMap&lt;&gt;()</code></li>
                <li>Ajouté <code>meta.put("email", "...")</code>, <code>meta.put("telephone", "...")</code>, etc.</li>
                <li>Extrait le fichier uploadé et créé <code>FileUpload cv</code></li>
                <li>Invoqué <code>controller.uploadUltimate(e, meta, cv)</code></li>
                <li>Le contrôleur a sauvegardé le CV avec <code>cv.saveTo(...)</code></li>
            </ol>
        </div>

        <!-- Actions -->
        <div style="text-align:center;margin-top:30px">
            <a href="/test-framework-mvc/sprint10/form-ultimate" class="back-link">
                ← Retour au formulaire
            </a>
            <a href="/test-framework-mvc/test/sprint10_index" class="back-link" style="background:#27ae60;margin-left:10px">
                 Menu principal
            </a>
        </div>
    </div>
</body>
</html>