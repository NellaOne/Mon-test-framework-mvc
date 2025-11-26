package mg.etu3273.test;

import mg.etu3273.framework.ModelView;
import mg.etu3273.framework.annotation.Controller;
import mg.etu3273.framework.annotation.GetUrl;
import mg.etu3273.framework.annotation.PostUrl;
import mg.etu3273.framework.annotation.Url;

@Controller
public class Sprint7Controller {
    @GetUrl("/user/form")
    public ModelView showUserForm() {
        System.out.println("✅ Sprint 7 - GET /user/form appelé");
        
        ModelView mv = new ModelView("sprint7_user_form.jsp");
        mv.addObject("titre", "Formulaire Utilisateur (Sprint 7)");
        mv.addObject("message", "Remplissez le formulaire ci-dessous");
        
        return mv;
    }

    @PostUrl("/user/form")
    public ModelView submitUserForm(String nom, String email, Integer age) {
        System.out.println("✅ Sprint 7 - POST /user/form appelé");
        System.out.println("   Données reçues: nom=" + nom + ", email=" + email + ", age=" + age);
        
        ModelView mv = new ModelView("sprint7_user_result.jsp");
        mv.addObject("titre", "Utilisateur Enregistré (Sprint 7)");
        mv.addObject("nom", nom);
        mv.addObject("email", email);
        mv.addObject("age", age);
        mv.addObject("message", "✅ Données enregistrées via POST !");
        
        return mv;
    }


    @GetUrl("/product/manage")
    public ModelView listProducts() {
        System.out.println("✅ Sprint 7 - GET /product/manage appelé");
        
        ModelView mv = new ModelView("sprint7_product_list.jsp");
        mv.addObject("titre", "Liste des Produits (Sprint 7)");
        mv.addObject("action", "Affichage (GET)");
        
        return mv;
    }

    @PostUrl("/product/manage")
    public ModelView createProduct(String nomProduit, Double prix) {
        System.out.println("✅ Sprint 7 - POST /product/manage appelé");
        System.out.println("   Création: nomProduit=" + nomProduit + ", prix=" + prix);
        
        ModelView mv = new ModelView("sprint7_product_created.jsp");
        mv.addObject("titre", "Produit Créé (Sprint 7)");
        mv.addObject("nomProduit", nomProduit);
        mv.addObject("prix", prix);
        mv.addObject("message", "✅ Produit créé via POST !");
        
        return mv;
    }

    @Url("/test/legacy")
    public ModelView legacyMethod() {
        System.out.println("✅ Sprint 7 - /test/legacy appelé (accepte GET et POST)");
        
        ModelView mv = new ModelView("sprint7_legacy.jsp");
        mv.addObject("titre", "Méthode Legacy (@Url)");
        mv.addObject("message", "Cette méthode accepte GET et POST");
        
        return mv;
    }

    @GetUrl("/sprint7/info")
    public String info() {
        return "🎉 Sprint 7 : Les annotations @GetUrl et @PostUrl fonctionnent parfaitement !";
    }

    @PostUrl("/sprint7/info")
    public String infoPost() {
        return "🔵 Sprint 7 : Vous avez fait un POST sur /sprint7/info !";
    }

    @GetUrl("/user/{id}")
    public ModelView getUserDetails(Integer id) {
        System.out.println("✅ Sprint 7 - GET /user/" + id);
        
        ModelView mv = new ModelView("sprint7_user_detail.jsp");
        mv.addObject("titre", "Détails Utilisateur #" + id);
        mv.addObject("userId", id);
        mv.addObject("action", "GET (Affichage)");
        
        return mv;
    }

    @PostUrl("/user/{id}")
    public ModelView updateUser(Integer id, String nom) {
        System.out.println("✅ Sprint 7 - POST /user/" + id + " (nom=" + nom + ")");
        
        ModelView mv = new ModelView("sprint7_user_updated.jsp");
        mv.addObject("titre", "Utilisateur #" + id + " Mis à Jour");
        mv.addObject("userId", id);
        mv.addObject("nom", nom);
        mv.addObject("action", "POST (Mise à jour)");
        
        return mv;
    }

    @GetUrl("/sprint7/hello")
    public String helloGet() {
        return "🟢 Hello from GET !";
    }

    @PostUrl("/sprint7/hello")
    public String helloPost() {
        return "🔵 Hello from POST !";
    }
}