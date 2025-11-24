package mg.etu3273.test;

import java.util.Arrays;
import java.util.List;

import mg.etu3273.framework.ModelView;
import mg.etu3273.framework.annotation.Controller;
import mg.etu3273.framework.annotation.RequestParam;
import mg.etu3273.framework.annotation.Url;

@Controller
public class EmployeeController {
    @Url("/emp/info")
    public ModelView info() {
        System.out.println("✅ EmployeeController.info() - Envoi données simples");
        ModelView mv = new ModelView("emp_info.jsp");
        mv.addObject("titre", "Informations Employé");
        mv.addObject("nomEmploye", "Rakoto Jean");
        mv.addObject("age", 30);
        mv.addObject("poste", "Développeur");
        mv.addObject("salaire", 2500000.0);
        return mv;
    }
    
    @Url("/emp/detail")
    public ModelView detail() {
        System.out.println("✅ EmployeeController.detail() - Envoi objet Employee");
        ModelView mv = new ModelView("emp_detail.jsp");
        Employee emp = new Employee("Rakoto", "Jean", 30, "Développeur Senior", 3000000.0);
        mv.addObject("employee", emp);
        mv.addObject("message", "Détails de l'employé");
        return mv;
    }
    
    @Url("/emp/list")
    public ModelView listEmployee() {
        System.out.println("✅ EmployeeController.listEmployee() - Envoi liste");
        ModelView mv = new ModelView("emp_list.jsp");
        List<Employee> employees = Arrays.asList(
            new Employee("Rakoto", "Jean", 30, "Développeur", 2500000.0),
            new Employee("Rabe", "Marie", 28, "Designer", 2200000.0),
            new Employee("Randria", "Paul", 35, "Manager", 3500000.0),
            new Employee("Rasoamalala", "Sophie", 26, "Analyste", 2000000.0),
            new Employee("Rabary", "Luc", 32, "Chef de Projet", 3000000.0)
        );
        mv.addObject("employees", employees);
        mv.addObject("total", employees.size());
        mv.addObject("titre", "Liste des Employés");
        return mv;
    }

    @Url("/emp/stats")
    public ModelView stats() {
        System.out.println("✅ EmployeeController.stats() - Envoi statistiques");
        ModelView mv = new ModelView("emp_stats.jsp");
        List<Employee> employees = Arrays.asList(
            new Employee("Rakoto", "Jean", 30, "Développeur", 2500000.0),
            new Employee("Rabe", "Marie", 28, "Designer", 2200000.0),
            new Employee("Randria", "Paul", 35, "Manager", 3500000.0)
        );
        double totalSalaires = employees.stream()
            .mapToDouble(Employee::getSalaire)
            .sum();
        
        double moyenneSalaire = totalSalaires / employees.size();
        mv.addObject("employees", employees);
        mv.addObject("nombreTotal", employees.size());
        mv.addObject("totalSalaires", totalSalaires);
        mv.addObject("moyenneSalaire", moyenneSalaire);
        mv.addObject("departement", "Informatique");
        return mv;
    }

     @Url("/emp/search")
    public ModelView searchEmployee(@RequestParam("employee_name") String nom,
                                     @RequestParam("min_age") Integer ageMin,
                                     @RequestParam("max_age") Integer ageMax) {
        
        System.out.println("✅ EmployeeController.searchEmployee() - Sprint 6-bis");
        System.out.println("   - employee_name → nom: " + nom);
        System.out.println("   - min_age → ageMin: " + ageMin);
        System.out.println("   - max_age → ageMax: " + ageMax);
        
        ModelView mv = new ModelView("emp_search_result.jsp");
        mv.addObject("nomRecherche", nom);
        mv.addObject("ageMin", ageMin);
        mv.addObject("ageMax", ageMax);
        mv.addObject("message", "Recherche avec @RequestParam (Sprint 6-bis)");
        
        return mv;
    }

    @Url("/emp/form/search")
    public ModelView showSearchForm() {
        System.out.println("✅ EmployeeController.showSearchForm()");
        
        ModelView mv = new ModelView("emp_form_search.jsp");
        mv.addObject("titre", "Rechercher Employé (Sprint 6-bis)");
        
        return mv;
    }
}