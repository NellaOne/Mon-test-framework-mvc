package mg.etu3273.test;

import mg.etu3273.framework.annotation.Controller;
import mg.etu3273.framework.annotation.RequestMapping;

@Controller
public class DeptController {
    
    @RequestMapping("/dept/liste")
    public String listeDept() {
        // Logique pour lister les départements
        return "dept-liste";
    }
    
    @RequestMapping("/dept/add") 
    public String addDept() {
        // Logique pour ajouter un département
        return "dept-add";
    }
    
    @RequestMapping("/dept/delete")
    public String deleteDept() {
        // Logique pour supprimer un département
        return "dept-delete";
    }
}