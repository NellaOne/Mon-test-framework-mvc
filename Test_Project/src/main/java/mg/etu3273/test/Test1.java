package mg.etu3273.test;

import mg.etu3273.framework.annotation.Url;


public class Test1 {  
    
    @Url("/test1/action")
    public String action() {
        System.out.println("⚠️ Test1.action() - NE DEVRAIT PAS ÊTRE APPELÉ");
        return "Action de Test1 (ne devrait pas être mappé)";
    }
    
    public String autre() {
        return "Autre Test1";
    }
}
