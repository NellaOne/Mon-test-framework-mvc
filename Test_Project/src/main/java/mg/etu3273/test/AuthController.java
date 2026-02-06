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
public class AuthController {
    
    @PostUrl("/login")
    public ModelView login(String username, String password, SessionManager session) {
        if ("admin".equals(username) && "1234".equals(password)) {
            session.set("userId", 1);
            session.set("username", username);
            session.set("role", "ADMIN");
            session.setTimeout(3600);  // 1 heure
            
            session.flash("Bienvenue " + username + " !");
            
            ModelView mv = new ModelView("dashboard.jsp");
            return mv;
        }
        
        ModelView mv = new ModelView("login.jsp");
        mv.addObject("error", "Identifiants incorrects");
        return mv;
    }
    
    @GetUrl("/dashboard")
    public ModelView dashboard(@SessionAttribute("username") String username,
                               @SessionAttribute("role") String role,
                               SessionManager session) {
        String flash = session.getFlash();
        
        ModelView mv = new ModelView("dashboard.jsp");
        mv.addObject("username", username);
        mv.addObject("role", role);
        mv.addObject("message", flash);
        return mv;
    }
    
    @PostUrl("/logout")
    public String logout(SessionManager session) {
        session.invalidate();
        return "Déconnexion réussie. <a href='/login'>Se reconnecter</a>";
    }
}