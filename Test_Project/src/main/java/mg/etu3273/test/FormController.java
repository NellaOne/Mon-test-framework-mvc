package mg.etu3273.test;

import mg.etu3273.framework.ModelView;
import mg.etu3273.framework.annotation.Controller;
import mg.etu3273.framework.annotation.RequestParam;
import mg.etu3273.framework.annotation.Url;

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

    @Url("/form/submit")
    public ModelView submitForm(@RequestParam("user_id") Integer id,
                                 @RequestParam("user_name") String nom,
                                 @RequestParam("user_email") String email,
                                 @RequestParam("user_active") Boolean actif) {
        
        System.out.println("✅ FormController.submitForm() - Sprint 6-bis");
        System.out.println("   - user_id → id: " + id);
        System.out.println("   - user_name → nom: " + nom);
        System.out.println("   - user_email → email: " + email);
        System.out.println("   - user_active → actif: " + actif);
        
        ModelView mv = new ModelView("form_submit_result.jsp");
        mv.addObject("titre", "Formulaire Soumis (Sprint 6-bis)");
        mv.addObject("id", id);
        mv.addObject("nom", nom);
        mv.addObject("email", email);
        mv.addObject("actif", actif);
        mv.addObject("message", "Toutes les données utilisent @RequestParam !");
        
        return mv;
    }

    @Url("/form/submit/form")
    public ModelView showSubmitForm() {
        System.out.println("✅ FormController.showSubmitForm()");
        
        ModelView mv = new ModelView("form_submit_form.jsp");
        mv.addObject("titre", "Formulaire avec @RequestParam");
        
        return mv;
    }
}
