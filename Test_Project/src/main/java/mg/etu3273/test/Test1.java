package mg.etu3273.test;

import mg.etu3273.framework.annotation.Url;

/**
 * Test1 - SANS annotation @Controller
 * Cette classe NE DOIT PAS être détectée
 */
public class Test1 {  // ✅ PUBLIC !
    
    @Url("/test1/action")
    public String action() {
        return "Action de Test1 (ne devrait pas être mappé)";
    }
    
    public String autre() {
        return "Autre Test1";
    }
}
