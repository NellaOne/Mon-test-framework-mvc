package mg.etu3273.test;

import mg.etu3273.framework.annotation.Controller;
import mg.etu3273.framework.annotation.Url;
import mg.etu3273.framework.ModelView;

@Controller
public class FormController {
    @Url("/form/add")
    public ModelView showForm() {
        System.out.println("✅ FormController.showForm()");
        
        ModelView mv = new ModelView("form_add.jsp");
        mv.addObject("titre", "Formulaire d'Ajout - Sprint 6");
        
        return mv;
    }

    @Url("/form/save")
    public ModelView save(Integer id, String nom, Integer age, String ville) {
        System.out.println("✅ FormController.save() - Sprint 6");
        System.out.println("   Paramètres reçus automatiquement:");
        System.out.println("   - id: " + id);
        System.out.println("   - nom: " + nom);
        System.out.println("   - age: " + age);
        System.out.println("   - ville: " + ville);
        
        ModelView mv = new ModelView("form_result.jsp");
        mv.addObject("titre", "Résultat - Sprint 6");
        mv.addObject("id", id);
        mv.addObject("nom", nom);
        mv.addObject("age", age);
        mv.addObject("ville", ville);
        mv.addObject("message", "Données reçues et injectées automatiquement !");
        
        return mv;
    }

    @Url("/form/test")
    public ModelView testTypes(String texte, Integer nombre, Double prix, Boolean actif) {
        System.out.println("✅ FormController.testTypes()");
        System.out.println("   - texte (String): " + texte);
        System.out.println("   - nombre (Integer): " + nombre);
        System.out.println("   - prix (Double): " + prix);
        System.out.println("   - actif (Boolean): " + actif);
        
        ModelView mv = new ModelView("form_test_result.jsp");
        mv.addObject("texte", texte);
        mv.addObject("nombre", nombre);
        mv.addObject("prix", prix);
        mv.addObject("actif", actif);
        
        return mv;
    }
}
