/* package mg.etu3273.test;

import mg.etu3273.framework.annotation.Controller;
import mg.etu3273.framework.annotation.Url;

// ==========================================
// Test1 : SANS @Controller (ne doit PAS être détecté)
// ==========================================
class Test1 {
    
    @Url("/test1/action")
    public String action() {
        return "Action Test1";
    }
    
    public String autre() {
        return "Autre Test1";
    }
}

// ==========================================
// Test2 : AVEC @Controller (doit être détecté)
// ==========================================
@Controller
class Test2 {
    
    @Url("/test2/list")
    public String list() {
        return "Liste Test2";
    }
    
    @Url("/test2/add")
    public String add() {
        return "Ajout Test2";
    }
    
    // Méthode sans @Url (ne doit pas être mappée)
    public String nonMappee() {
        return "Non mappée Test2";
    }
}

// ==========================================
// Test3 : AVEC @Controller (doit être détecté)
// ==========================================
@Controller
class Test3 {
    
    @Url("/test3/delete")
    public String delete() {
        return "Suppression Test3";
    }
    
    @Url("/test3/update")
    public String update() {
        return "Mise à jour Test3";
    }
} */