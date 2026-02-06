package mg.etu3273.test;

import mg.etu3273.framework.ModelView;
import mg.etu3273.framework.annotation.Controller;
import mg.etu3273.framework.annotation.GetUrl;
import mg.etu3273.framework.annotation.PostUrl;
import mg.etu3273.framework.annotation.Url;
import mg.etu3273.test.model.Employee;
import mg.etu3273.framework.annotation.SessionAttribute;
import mg.etu3273.framework.utils.SessionManager;


@Controller
public class EmployeeController {
    
    @GetUrl("/profile")
    public ModelView profile(@SessionAttribute("userId") Integer userId,
                            @SessionAttribute("username") String username) {
        
        ModelView mv = new ModelView("profile.jsp");
        mv.addObject("userId", userId);
        mv.addObject("username", username);
        return mv;
    }
    
    @GetUrl("/dashboard")
    public ModelView dashboard(@SessionAttribute(value = "theme", required = false) String theme) {
        
        String finalTheme = theme != null ? theme : "default";
        
        ModelView mv = new ModelView("dashboard.jsp");
        mv.addObject("theme", finalTheme);
        return mv;
    }
    
    @PostUrl("/emp/update")
    public ModelView update(Employee e,
                           @SessionAttribute("userId") Integer currentUserId,
                           SessionManager session) {
        
        e.setModifiedBy(currentUserId);
        session.flash("Employé mis à jour");
        
        ModelView mv = new ModelView("result.jsp");
        return mv;
    }
    
    @GetUrl("/admin")
    public ModelView admin(@SessionAttribute("role") String role) {
        if (!"ADMIN".equals(role)) {
            ModelView mv = new ModelView("forbidden.jsp");
            mv.addObject("error", "Accès refusé");
            return mv;
        }
        
        return new ModelView("admin_panel.jsp");
    }
}