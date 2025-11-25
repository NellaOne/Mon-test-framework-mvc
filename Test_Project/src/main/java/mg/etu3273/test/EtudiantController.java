package mg.etu3273.test;

import mg.etu3273.framework.ModelView;
import mg.etu3273.framework.annotation.Controller;
import mg.etu3273.framework.annotation.Url;

@Controller
public class EtudiantController {
    

    @Url("/etudiant/{id}")
    public ModelView getDetail(Integer id) {
        System.out.println("✅ EtudiantController.getDetail() appelé");
        System.out.println("   Paramètre id reçu: " + id + " (null pour Sprint 3-bis)");
        
        ModelView mv = new ModelView("etudiant_detail.jsp");
        

        mv.addObject("message", "Sprint 3-bis : URL dynamique reconnue !");
        mv.addObject("urlPattern", "/etudiant/{id}");
        mv.addObject("idRecuActuel", id);


        mv.addObject("noteImportante", "La valeur du {id} sera extraite dans Sprint 6-ter");
        
        return mv;
    }
    
    @Url("/etudiant/liste")
    public ModelView liste() {
        System.out.println("✅ EtudiantController.liste() - URL statique");
        
        ModelView mv = new ModelView("etudiant_liste.jsp");
        mv.addObject("message", "Liste des étudiants (URL statique)");
        
        return mv;
    }

    @Url("/etudiant/{id}/notes/{matiere}")
    public ModelView getNote(Integer id, String matiere) {
        System.out.println("✅ EtudiantController.getNote() appelé");
        System.out.println("   id: " + id + ", matiere: " + matiere);
        
        ModelView mv = new ModelView("etudiant_note.jsp");
        mv.addObject("message", "Sprint 3-bis : URL avec 2 paramètres dynamiques !");
        mv.addObject("urlPattern", "/etudiant/{id}/notes/{matiere}");
        
        mv.addObject("idRecuActuel", id);
        return mv;
    }
}
