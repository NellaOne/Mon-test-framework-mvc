package mg.etu3273.test;

import mg.etu3273.framework.annotation.Url;

public class TestAnnotationUrl {
    
    @Url("/url/list")
    public String listUrl() {
        System.out.println("Méthode listUrl appelée pour l'URL: /url/list");
        return "Liste des départements";
    }
    
    @Url("/url/add") 
    public String addUrl() {
        System.out.println("Méthode addUrl appelée pour l'URL: /url/add");
        return "Ajout département";
    }
    
    // Méthode SANS annotation (pour tester)
    public String deleteUrl() {
        System.out.println("Méthode sans annotation");
        return "Suppression";
    }
}