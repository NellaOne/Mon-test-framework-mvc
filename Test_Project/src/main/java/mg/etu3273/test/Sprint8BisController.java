package mg.etu3273.test;

import mg.etu3273.framework.ModelView;
import mg.etu3273.framework.annotation.Controller;
import mg.etu3273.framework.annotation.GetUrl;
import mg.etu3273.framework.annotation.PostUrl;
import mg.etu3273.test.model.Department;
import mg.etu3273.test.model.Employee;

@Controller
public class Sprint8BisController {

    
    @GetUrl("/sprint8bis/form-simple")
    public ModelView showFormSimple() {
        ModelView mv = new ModelView("sprint8bis_form_simple.jsp");
        mv.addObject("titre", "Sprint 8-bis : Objet simple");
        return mv;
    }

    @PostUrl("/sprint8bis/save-simple")
    public ModelView saveSimple(Employee e) {
        System.out.println(" SPRINT 8-bis - Objet reçu: " + e);
        
        ModelView mv = new ModelView("sprint8bis_result.jsp");
        mv.addObject("titre", "Sprint 8-bis : Objet simple");
        mv.addObject("employee", e);
        mv.addObject("sprint", "Sprint 8-bis - Object binding simple");
        return mv;
    }

    
    @GetUrl("/sprint8bis/form-nested")
    public ModelView showFormNested() {
        ModelView mv = new ModelView("sprint8bis_form_nested.jsp");
        mv.addObject("titre", "Sprint 8-bis : Objet imbriqué");
        return mv;
    }

    @PostUrl("/sprint8bis/save-nested")
    public ModelView saveNested(Employee e) {
        System.out.println(" SPRINT 8-bis - Objet avec imbriqué reçu: " + e);
        System.out.println("   - Employee: " + e.getNom());
        System.out.println("   - Department: " + (e.getDepartment() != null ? e.getDepartment().getNom() : "null"));
        
        ModelView mv = new ModelView("sprint8bis_result.jsp");
        mv.addObject("titre", "Sprint 8-bis : Objet imbriqué");
        mv.addObject("employee", e);
        mv.addObject("sprint", "Sprint 8-bis - Objet avec objet imbriqué");
        return mv;
    }
    
    @GetUrl("/sprint8bis/form-multiple")
    public ModelView showFormMultiple() {
        ModelView mv = new ModelView("sprint8bis_form_multiple.jsp");
        mv.addObject("titre", "Sprint 8-bis : Plusieurs objets");
        return mv;
    }

    @PostUrl("/sprint8bis/save-multiple")
    public ModelView saveMultiple(Employee e, Department d, Integer id) {
        System.out.println(" SPRINT 8-bis - Plusieurs objets reçus:");
        System.out.println("   - Employee: " + e);
        System.out.println("   - Department: " + d);
        System.out.println("   - ID: " + id);
        
        ModelView mv = new ModelView("sprint8bis_result_multiple.jsp");
        mv.addObject("titre", "Sprint 8-bis : Plusieurs objets");
        mv.addObject("employee", e);
        mv.addObject("department", d);
        
        mv.addObject("id", id);
        mv.addObject("sprint", "Sprint 8-bis - Plusieurs objets simultanés");
        return mv;
    }
    
    @GetUrl("/sprint8bis/form-list")
    public ModelView showFormList() {
        ModelView mv = new ModelView("sprint8bis_form_list.jsp");
        mv.addObject("titre", "Sprint 8-bis : Listes/Tableaux");
        return mv;
    }

    @PostUrl("/sprint8bis/save-list")
    public ModelView saveList(Employee e) {
        System.out.println(" SPRINT 8-bis - Objet avec liste reçu: " + e);
        System.out.println("   - Hobbies: " + e.getHobbies());
        
        ModelView mv = new ModelView("sprint8bis_result.jsp");
        mv.addObject("titre", "Sprint 8-bis : Listes/Tableaux");
        mv.addObject("employee", e);
        mv.addObject("sprint", "Sprint 8-bis - Binding de listes/tableaux");
        return mv;
    }
    
    @GetUrl("/sprint8bis/form-complete")
    public ModelView showFormComplete() {
        ModelView mv = new ModelView("sprint8bis_form_complete.jsp");
        mv.addObject("titre", "Sprint 8-bis : Test complet");
        return mv;
    }

    @PostUrl("/sprint8bis/save-complete")
    public ModelView saveComplete(Employee e) {
        System.out.println(" SPRINT 8-bis - Test complet:");
        System.out.println("   - Employee: " + e.getNom() + ", " + e.getAge() + " ans");
        System.out.println("   - Salaire: " + e.getSalaire());
        System.out.println("   - Department: " + (e.getDepartment() != null ? e.getDepartment().getNom() : "null"));
        System.out.println("   - Hobbies: " + e.getHobbies());
        
        ModelView mv = new ModelView("sprint8bis_result.jsp");
        mv.addObject("titre", "Sprint 8-bis : Test complet");
        mv.addObject("employee", e);
        mv.addObject("sprint", "Sprint 8-bis - Test complet (objet + imbriqué + liste)");
        return mv;
    }
}