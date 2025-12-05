package mg.etu3273.test;

import java.util.Map;

import mg.etu3273.framework.ModelView;
import mg.etu3273.framework.annotation.Controller;
import mg.etu3273.framework.annotation.RequestParam;
import mg.etu3273.framework.annotation.Url;

@Controller
public class TestController {
    @Url("/test/hello")
    public String hello() {
        return "✅ Sprint 1-2 : Mapping URL → Méthode fonctionne !";
    }

    @Url("/test/list")
    public String list() {
        return "✅ Sprint 3-4 : Scan automatique et invocation par réflexion fonctionnent !";
    }

    @Url("/test/view")
    public ModelView view() {
        ModelView mv = new ModelView("test_view.jsp");
        mv.addObject("titre", "Sprint 4-bis : ModelView");
        mv.addObject("message", "Cette page est affichée via ModelView + JSP");
        return mv;
    }

    @Url("/test/data")
    public ModelView data() {
        ModelView mv = new ModelView("test_data.jsp");
        mv.addObject("titre", "Sprint 5 : Transfert de données");
        mv.addObject("nom", "Jean Rakoto");
        mv.addObject("age", 25);
        mv.addObject("ville", "Antananarivo");
        return mv;
    }

    @Url("/test/form")
    public ModelView showForm() {
        ModelView mv = new ModelView("test_form.jsp");
        mv.addObject("titre", "Sprint 6 : Formulaire");
        return mv;
    }

    @Url("/test/save")
    public ModelView save(String nom, Integer age, String ville) {
        ModelView mv = new ModelView("test_result.jsp");
        mv.addObject("titre", "Sprint 6 : Injection automatique");
        mv.addObject("nom", nom);
        mv.addObject("age", age);
        mv.addObject("ville", ville);
        mv.addObject("sprint", "Sprint 6 - Injection automatique");
        return mv;
    }

    @Url("/test/create")
    public ModelView create(@RequestParam("user_name") String nom, 
                           @RequestParam("user_age") Integer age) {
        ModelView mv = new ModelView("test_result.jsp");
        mv.addObject("titre", "Sprint 6-bis : @RequestParam");
        mv.addObject("nom", nom);
        mv.addObject("age", age);
        mv.addObject("ville", "N/A");
        mv.addObject("sprint", "Sprint 6-bis - @RequestParam");
        return mv;
    }

    @Url("/test/{id}")
    public ModelView dynamicUrl(Integer id) {
        ModelView mv = new ModelView("test_dynamic.jsp");
        mv.addObject("titre", "Sprint 6-ter : URL dynamique");
        mv.addObject("id", id);
        mv.addObject("urlPattern", "/test/{id}");
        return mv;
    }

    @Url("/test/{id}/details")
    public ModelView dynamicUrlDetails(Integer id) {
        ModelView mv = new ModelView("test_dynamic.jsp");
        mv.addObject("titre", "Sprint 6-ter : URL dynamique avec path");
        mv.addObject("id", id);
        mv.addObject("urlPattern", "/test/{id}/details");
        return mv;
    }

    @Url("/test/{userId}/notes/{matiere}")
    public ModelView multiParams(Integer userId, String matiere) {
        ModelView mv = new ModelView("test_dynamic.jsp");
        mv.addObject("titre", "Sprint 3-bis : 2 paramètres dynamiques");
        mv.addObject("id", userId);
        mv.addObject("urlPattern", "/test/{userId}/notes/{matiere}");
        mv.addObject("extra", "Matière : " + matiere);
        return mv;
    }

     @Url("/test/save-map")
    public ModelView saveWithMap(Map<String, Object> params) {
        System.out.println("📦 SPRINT 8 - Paramètres reçus dans Map:");
        
        // Extraire les valeurs depuis la Map
        String nom = (String) params.get("nom");
        String ageStr = (String) params.get("age");
        String ville = (String) params.get("ville");
        
        // Conversion manuelle si nécessaire
        Integer age = ageStr != null ? Integer.parseInt(ageStr) : null;
        
        // Afficher tous les paramètres reçus
        for (Map.Entry<String, Object> entry : params.entrySet()) {
            System.out.println("   - " + entry.getKey() + " = " + entry.getValue());
        }
        
        ModelView mv = new ModelView("test_result.jsp");
        mv.addObject("titre", "Sprint 8 : Map<String, Object>");
        mv.addObject("nom", nom);
        mv.addObject("age", age);
        mv.addObject("ville", ville);
        mv.addObject("sprint", "Sprint 8 - Map<String, Object> (TOUS les params)");
        return mv;
    }

    @Url("/test/save-mixed")
    public ModelView saveMixed(Map<String, Object> params, @RequestParam("priority") String priority) {
        System.out.println("📦 SPRINT 8 - Mode mixte:");
        System.out.println("   Map contient: " + params.keySet());
        System.out.println("   Paramètre priority: " + priority);
        
        String nom = (String) params.get("nom");
        String ville = (String) params.get("ville");
        
        ModelView mv = new ModelView("test_result.jsp");
        mv.addObject("titre", "Sprint 8 : Mode Mixte");
        mv.addObject("nom", nom);
        mv.addObject("age", "N/A");
        mv.addObject("ville", ville);
        mv.addObject("sprint", "Sprint 8 - Map + @RequestParam (Priority: " + priority + ")");
        return mv;
    }

}
