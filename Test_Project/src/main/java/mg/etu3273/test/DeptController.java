package mg.etu3273.test;

import java.util.Arrays;
import java.util.List;

import mg.etu3273.framework.ModelView;
import mg.etu3273.framework.annotation.Controller;
import mg.etu3273.framework.annotation.RequestParam;
import mg.etu3273.framework.annotation.Url;

@Controller
public class DeptController {    
    @Url("/dept/add")
    public String add() {
        System.out.println("✅ DeptController.add() invoqué !");
        return "Ajout d'un département - Reflection fonctionne parfaitement !";
    }

     @Url("/dept/liste")
    public ModelView liste() {
        System.out.println("✅ DeptController.liste() - Retourne ModelView");
        ModelView mv = new ModelView();
        mv.setView("dept_liste.jsp");
        List<Departement> departements = Arrays.asList(
            new Departement(1, "Informatique", "Antananarivo", 25),
            new Departement(2, "Ressources Humaines", "Antananarivo", 12),
            new Departement(3, "Marketing", "Fianarantsoa", 15),
            new Departement(4, "Finance", "Antananarivo", 10)
        );
        mv.addObject("departements", departements);
        mv.addObject("total", departements.size());
        mv.addObject("titre", "Liste des Départements");
        return mv;
    }

    @Url("/dept/info")
    public ModelView info() {
        System.out.println("✅ DeptController.info() - Retourne ModelView");
        ModelView mv = new ModelView("dept_info.jsp");
        Departement dept = new Departement(1, "Informatique", "Antananarivo", 25);
        mv.addObject("departement", dept);
        mv.addObject("responsable", "M. Rakoto Jean");
        mv.addObject("budget", 50000000.0);
        return mv;
    }

    @Url("/dept/save")
    public ModelView saveDept(Integer id, String nom, String localisation, Integer nombreEmployes) {
        System.out.println("✅ DeptController.saveDept() - Sprint 6");
        System.out.println("   Paramètres injectés:");
        System.out.println("   - id: " + id);
        System.out.println("   - nom: " + nom);
        System.out.println("   - localisation: " + localisation);
        System.out.println("   - nombreEmployes: " + nombreEmployes);
        
        ModelView mv = new ModelView("dept_save_result.jsp");
        mv.addObject("titre", "Département Enregistré");
        mv.addObject("id", id);
        mv.addObject("nom", nom);
        mv.addObject("localisation", localisation);
        mv.addObject("nombreEmployes", nombreEmployes);
        mv.addObject("message", "Département enregistré avec succès (Sprint 6) !");
        
        return mv;
    }

    @Url("/dept/search")
    public ModelView search(String nom, String localisation) {
        System.out.println("✅ DeptController.search()");
        System.out.println("   - nom: " + nom);
        System.out.println("   - localisation: " + localisation);
        
        ModelView mv = new ModelView("dept_search_result.jsp");
        mv.addObject("nomRecherche", nom);
        mv.addObject("localisationRecherche", localisation);
        mv.addObject("message", "Recherche effectuée (Sprint 6)");
        
        return mv;
    }

    
    @Url("/dept/form/add")
    public ModelView showAddForm() {
        System.out.println("✅ DeptController.showAddForm()");
        
        ModelView mv = new ModelView("dept_form_add.jsp");
        mv.addObject("titre", "Ajouter un Département");
        
        return mv;
    }

    
    @Url("/dept/{id}")
    public ModelView getDetail(Integer id) {
        System.out.println("✅ DeptController.getDetail() appelé");
        System.out.println("   Paramètre id: " + id + " (null pour Sprint 3-bis)");
        
        ModelView mv = new ModelView("dept_detail_dynamique.jsp");
        mv.addObject("message", "Département - URL dynamique");
        mv.addObject("urlPattern", "/dept/{id}");
        mv.addObject("idActuel", id);
        
        return mv;
    }

    @Url("/dept/{id}/edit")
    public ModelView edit(Integer id) {
        System.out.println("✅ DeptController.edit() - URL dynamique");
        System.out.println("   id: " + id);
        
        ModelView mv = new ModelView("dept_edit.jsp");
        mv.addObject("message", "Édition du département");
        mv.addObject("urlPattern", "/dept/{id}/edit");
        mv.addObject("idActuel", id);
        
        return mv;
    }

     @Url("/dept/create")
    public ModelView createDept(@RequestParam("departement_id") Integer id,
                                 @RequestParam("departement_nom") String nom,
                                 @RequestParam("dept_localisation") String localisation,
                                 @RequestParam("nb_employes") Integer nombreEmployes) {
        
        System.out.println("✅ DeptController.createDept() - Sprint 6-bis");
        System.out.println("   Avec @RequestParam (noms différents):");
        System.out.println("   - departement_id → id: " + id);
        System.out.println("   - departement_nom → nom: " + nom);
        System.out.println("   - dept_localisation → localisation: " + localisation);
        System.out.println("   - nb_employes → nombreEmployes: " + nombreEmployes);
        
        ModelView mv = new ModelView("dept_create_result.jsp");
        mv.addObject("titre", "Département Créé (Sprint 6-bis)");
        mv.addObject("id", id);
        mv.addObject("nom", nom);
        mv.addObject("localisation", localisation);
        mv.addObject("nombreEmployes", nombreEmployes);
        mv.addObject("message", "Créé avec @RequestParam - noms différents !");
        
        return mv;
    }

    @Url("/dept/form/create")
    public ModelView showCreateForm() {
        System.out.println("✅ DeptController.showCreateForm()");
        
        ModelView mv = new ModelView("dept_form_create.jsp");
        mv.addObject("titre", "Créer Département (Sprint 6-bis)");
        
        return mv;
    }

    @Url("/dept/update")
    public ModelView updateDept(@RequestParam("dept_id") Integer id,
                                 String nom,  // ← Pas de @RequestParam, injection normale
                                 @RequestParam("new_location") String localisation) {
        
        System.out.println("✅ DeptController.updateDept() - Sprint 6-bis (mixte)");
        System.out.println("   - dept_id → id: " + id);
        System.out.println("   - nom → nom: " + nom + " (injection normale)");
        System.out.println("   - new_location → localisation: " + localisation);
        
        ModelView mv = new ModelView("dept_update_result.jsp");
        mv.addObject("id", id);
        mv.addObject("nom", nom);
        mv.addObject("localisation", localisation);
        mv.addObject("message", "Mise à jour avec @RequestParam mixte");
        
        return mv;
    }

}