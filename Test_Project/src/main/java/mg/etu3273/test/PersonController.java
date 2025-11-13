package mg.etu3273.test;

import java.util.Arrays;
import java.util.List;

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
        mv.addObject("nom", "Rakoto");
        mv.addObject("age", 25);
        mv.addObject("ville", "Antananarivo");
        mv.addObject("profession", "Ingénieur");
        return mv;
    }

    @Url("/person/detail")
    public ModelView detail() {
        ModelView mv = new ModelView("person_detail.jsp");
        Person person = new Person("Jean", 30, "Fianarantsoa");
        mv.addObject("person", person);
        mv.addObject("titre", "Détail de la Personne");
        return mv;
    }
    

    @Url("/person/liste")
    public ModelView liste() {
        ModelView mv = new ModelView("person_liste.jsp");
        
        // ✅ Envoi de collections
        List<Person> personnes = Arrays.asList(
            new Person("Alice", 25, "Tana"),
            new Person("Bob", 30, "Fianarantsoa"),
            new Person("Charlie", 35, "Toamasina")
        );
        mv.addObject("personnes", personnes);
        mv.addObject("total", personnes.size());
        
        return mv;
    }

    

   /*  @Url("/person/liste")
    public ModelView liste() {
        System.out.println("✅ PersonController.liste() - Retourne ModelView");
        ModelView mv = new ModelView("person_liste.jsp");
        System.out.println("   → Vue définie: person_liste.jsp");
        return mv;
    } */
}