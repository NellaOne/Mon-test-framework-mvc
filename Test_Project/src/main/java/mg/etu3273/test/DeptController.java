package mg.etu3273.test;

import java.util.Arrays;
import java.util.List;

import mg.etu3273.framework.ModelView;
import mg.etu3273.framework.annotation.Controller;
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
}