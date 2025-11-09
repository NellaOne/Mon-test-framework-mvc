package mg.etu3273.test;

import mg.etu3273.framework.annotation.Controller;
import mg.etu3273.framework.annotation.Url;

@Controller
public class Test3 {  
    
   @Url("/test3/delete")
    public String delete() {
        System.out.println("✅ Méthode delete() appelée dans Test3");
        return "Suppression d'un élément - Test3 (Reflection OK)";
    }
    
    @Url("/test3/update")
    public String update() {
        System.out.println("✅ Méthode update() appelée dans Test3");
        return "Mise à jour d'un élément - Test3 (Invocation réussie !)";
    }
    
    @Url("/test3/detail")
    public String detail() {
        System.out.println("✅ Méthode detail() appelée dans Test3");
        return "Détail d'un élément - Test3 - Sprint 4 Complété !";
    }
    
    @Url("/test3/welcome")
    public String welcome() {
        System.out.println("✅ Méthode welcome() appelée dans Test3");
        return "Bienvenue ! Votre framework MVC fonctionne avec Reflection.";
    }
}