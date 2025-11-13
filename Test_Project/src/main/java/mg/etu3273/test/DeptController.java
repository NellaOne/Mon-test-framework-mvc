package mg.etu3273.test;

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
        System.out.println("   → Vue définie: dept_liste.jsp");
        return mv;
    }

    @Url("/dept/info")
    public ModelView info() {
        System.out.println("✅ DeptController.info() - Retourne ModelView");
        ModelView mv = new ModelView("dept_info.jsp");
        System.out.println("   → Vue définie: dept_info.jsp");
        return mv;
    }
}