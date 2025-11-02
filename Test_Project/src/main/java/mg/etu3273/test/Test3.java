package mg.etu3273.test;

import mg.etu3273.framework.annotation.Controller;
import mg.etu3273.framework.annotation.Url;

/**
 * Test3 - AVEC annotation @Controller
 * Cette classe DOIT être détectée
 */
@Controller
public class Test3 {  // ✅ PUBLIC !
    
    @Url("/test3/delete")
    public String delete() {
        return "Suppression d'un élément - Test3";
    }
    
    @Url("/test3/update")
    public String update() {
        return "Mise à jour d'un élément - Test3";
    }
    
    @Url("/test3/detail")
    public String detail() {
        return "Détail d'un élément - Test3";
    }
}