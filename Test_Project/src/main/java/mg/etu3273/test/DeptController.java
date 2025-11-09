package mg.etu3273.test;

import mg.etu3273.framework.annotation.Controller;
import mg.etu3273.framework.annotation.Url;

@Controller
public class DeptController {
    
    @Url("/dept/liste")
    public String liste() {
        System.out.println("✅ DeptController.liste() invoqué !");
        return "Liste des départements - Framework MVC Sprint 4 opérationnel !";
    }
    
    @Url("/dept/add")
    public String add() {
        System.out.println("✅ DeptController.add() invoqué !");
        return "Ajout d'un département - Reflection fonctionne parfaitement !";
    }
    
    @Url("/dept/info")
    public String info() {
        System.out.println("✅ DeptController.info() invoqué !");
        return "Informations sur le département - Sprint 4 réussi avec Reflection !";
    }
}