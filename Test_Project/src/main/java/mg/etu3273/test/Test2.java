package mg.etu3273.test;

import mg.etu3273.framework.ModelView;
import mg.etu3273.framework.annotation.Controller;
import mg.etu3273.framework.annotation.Url;

@Controller
public class Test2 {  
    
    @Url("/test2/list")
    public String list() {
        System.out.println("✅ Méthode list() appelée dans Test2");
        return "Liste des éléments - Test2 (invoqué via Reflection)";
    }
    
    @Url("/test2/add")
    public String add() {
        System.out.println("✅ Méthode add() appelée dans Test2");
        return "Ajout d'un élément - Test2 (Sprint 4 OK !)";
    }

    @Url("/test2/message")
    public String message() {
        System.out.println("✅ Méthode message() appelée dans Test2");
        return "Bonjour depuis le contrôleur Test2 ! Framework MVC Sprint 4 fonctionne parfaitement.";
    }
        
    
    // Méthode sans @Url (ne doit pas être mappée)
    public String nonMappee() {
        System.out.println("⚠️ Cette méthode ne devrait pas être appelée");
        return "Méthode non mappée de Test2";
    }

     @Url("/test2/view")
    public ModelView view() {
        System.out.println("✅ Test2.view() - Retourne ModelView");
        ModelView mv = new ModelView();
        mv.setView("test.jsp");
        System.out.println("   → Vue définie: test.jsp");
        return mv;
    }

     @Url("/test2/accueil")
    public ModelView accueil() {
        System.out.println("✅ Test2.accueil() - Retourne ModelView");
        ModelView mv = new ModelView("accueil.jsp");
        System.out.println("   → Vue définie: accueil.jsp");
        return mv;
    }
}

