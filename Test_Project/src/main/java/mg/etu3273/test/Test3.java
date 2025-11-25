package mg.etu3273.test;

import mg.etu3273.framework.ModelView;
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
    
    @Url("/test3/welcome")
    public String welcome() {
        System.out.println("✅ Méthode welcome() appelée dans Test3");
        return "Bienvenue ! Votre framework MVC fonctionne avec Reflection.";
    }

      @Url("/test3/page")
    public ModelView page() {
        System.out.println("✅ Test3.page() - Retourne ModelView");
        ModelView mv = new ModelView();
        mv.setView("page_test3.jsp");
        System.out.println("   → Vue définie: page_test3.jsp");
        return mv;
    }

    @Url("/test3/detail")
    public ModelView detail() {
        System.out.println("✅ Test3.detail() - Retourne ModelView");
        ModelView mv = new ModelView("detail.jsp");
        System.out.println("   → Vue définie: detail.jsp");
        return mv;
    }
}