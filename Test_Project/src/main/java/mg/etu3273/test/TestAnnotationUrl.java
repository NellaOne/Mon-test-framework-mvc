package mg.etu3273.test;
import mg.etu3273.framework.annotation.Url;
public class TestAnnotationUrl {
    @Url("/url/list")
    public String listUrl() {
        return "Liste des départements";
    }
    
    @Url("/url/add") 
    public String addUrl() {
        return "Ajout département";
    }
    public String deleteUrl() {
        System.out.println("Méthode sans annotation");
        return "Suppression";
    }
}