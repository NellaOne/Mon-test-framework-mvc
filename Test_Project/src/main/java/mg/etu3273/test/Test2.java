package mg.etu3273.test;

import mg.etu3273.framework.annotation.Controller;
import mg.etu3273.framework.annotation.Url;

/**
 * Test2 - AVEC annotation @Controller
 * Cette classe DOIT être détectée
 */
@Controller
public class Test2 {  // ✅ PUBLIC !
    
    @Url("/test2/list")
    public String list() {
        return "Liste des éléments - Test2";
    }
    
    @Url("/test2/add")
    public String add() {
        return "Ajout d'un élément - Test2";
    }
    
    // Méthode sans @Url (ne doit pas être mappée)
    public String nonMappee() {
        return "Méthode non mappée de Test2";
    }
}

