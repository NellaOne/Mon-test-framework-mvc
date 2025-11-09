package mg.etu3273.test;

import mg.etu3273.framework.annotation.Controller;
import mg.etu3273.framework.annotation.Url;

@Controller
public class PersonController {
    
    @Url("/person/affiche")
    public String affiche() {
        System.out.println("✅ PersonController.affiche() invoqué !");
        System.out.println("   → Ceci est un exemple pour le Sprint 4");
        return "Affichage de la personne - PersonController (Sprint 4)";
    }
    
    @Url("/person/liste")
    public String liste() {
        System.out.println("✅ PersonController.liste() invoqué !");
        return "Liste de toutes les personnes - Invocation Reflection réussie !";
    }
    
    @Url("/person/save")
    public String save() {
        System.out.println("✅ PersonController.save() invoqué !");
        return "Personne sauvegardée avec succès via le framework MVC !";
    }
}