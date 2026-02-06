package mg.etu3273.test;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import mg.etu3273.framework.ModelView;
import mg.etu3273.framework.annotation.Controller;
import mg.etu3273.framework.annotation.GetUrl;
import mg.etu3273.framework.annotation.PostUrl;
import mg.etu3273.framework.annotation.SessionAttribute;
import mg.etu3273.framework.utils.SessionManager;

@Controller
public class Sprint11Controller {
    
    @GetUrl("/sprint11/login")
    public ModelView showLogin() {
        return new ModelView("sprint11_login.jsp");
    }
    
    /* @PostUrl("/sprint11/login")
    public ModelView login(String username, String password, SessionManager session, HttpServletResponse response) throws IOException {
        if ("admin".equals(username) && "admin123".equals(password)) {
            session.set("userId", 1);
            session.set("username", username);
            session.set("role", "ADMIN");
            session.flash("Connexion réussie ! Bienvenue " + username);
            
            ModelView mv = new ModelView("redirect");
            mv.addObject("redirectUrl", "/test-framework-mvc/sprint11/dashboard");
            return mv;
        }
        
        ModelView mv = new ModelView("sprint11_login.jsp");
        mv.addObject("error", "Identifiants incorrects");
        return mv;
    } */

        @PostUrl("/sprint11/login")
    public ModelView login(String username, String password, 
                        SessionManager session, 
                        HttpServletResponse response) throws IOException {
                            
        Map<String, String> validUsers = new HashMap<>();
        validUsers.put("admin", "admin123");
        if ("admin".equals(username) && "admin123".equals(password)) {
            session.set("userId", 1);
            session.set("username", username);
            session.set("role", "ADMIN");
            session.flash("Connexion réussie ! Bienvenue " + username);
            response.sendRedirect("/test-framework-mvc/sprint11/dashboard");
            return null;
        }
        ModelView mv = new ModelView("sprint11_login.jsp");
        mv.addObject("error", "Identifiants incorrects");
        return mv;
    }
    
    @GetUrl("/sprint11/dashboard")
    public ModelView dashboard(@SessionAttribute("username") String username,
                               @SessionAttribute("role") String role,
                               SessionManager session) {
        String flash = session.getFlash();
        
        ModelView mv = new ModelView("sprint11_dashboard.jsp");
        mv.addObject("username", username);
        mv.addObject("role", role);
        mv.addObject("flash", flash);
        mv.addObject("sessionId", session.getId());
        return mv;
    }
    
    @GetUrl("/sprint11/profile")
    public ModelView profile(@SessionAttribute("username") String username,
                            @SessionAttribute(value = "email", required = false) String email,
                            SessionManager session) {
        ModelView mv = new ModelView("sprint11_profile.jsp");
        mv.addObject("username", username);
        mv.addObject("email", email != null ? email : "Non défini");
        mv.addObject("allData", session.getAll());
        return mv;
    }
    
    @PostUrl("/sprint11/update-email")
public ModelView updateEmail(String email, SessionManager session, HttpServletResponse response) throws IOException {
    session.set("email", email);
    session.flash("Email mis à jour");
    response.sendRedirect("/test-framework-mvc/sprint11/profile");
    return null;
}
    
    @PostUrl("/sprint11/logout")
    public ModelView logout(SessionManager session) {
        session.invalidate();
        
        ModelView mv = new ModelView("sprint11_logout.jsp");
        return mv;
    }
    
    @GetUrl("/sprint11/test-raw")
    public String testRaw(HttpSession session) {
        session.setAttribute("test", "Valeur de test");
        return "Test HttpSession : ID=" + session.getId() + ", test=" + session.getAttribute("test");
    }
}