package mg.etu3273.test;

import mg.etu3273.framework.ModelView;
import mg.etu3273.framework.annotation.Controller;
import mg.etu3273.framework.annotation.Url;

@Controller
public class PersonController {
    
     @Url("/person/info")
    public String info() {
        System.out.println("✅ PersonController.info() - Retourne String");
        return "Informations sur la personne (String)";
    }
    
    @Url("/person/save")
    public String save() {
        System.out.println("✅ PersonController.save() invoqué !");
        return "Personne sauvegardée avec succès via le framework MVC !";
    }

     @Url("/person/affiche")
    public ModelView affiche() {
        System.out.println("✅ PersonController.affiche() - Retourne ModelView");
        ModelView mv = new ModelView();
        mv.setView("person.jsp");
        System.out.println("   → Vue définie: person.jsp");
        return mv;
    }

    @Url("/person/liste")
    public ModelView liste() {
        System.out.println("✅ PersonController.liste() - Retourne ModelView");
        ModelView mv = new ModelView("person_liste.jsp");
        System.out.println("   → Vue définie: person_liste.jsp");
        return mv;
    }
}