package mg.etu3273.test;

import java.lang.reflect.Method;

import mg.etu3273.framework.annotation.Url;

public class TestAnnotationMain {
    
    public static void main(String[] args) {
        System.out.println("=== TEST ANNOTATION URL - SPRINT 2 ===");
        
        // Créer une instance du contrôleur de test
        TestAnnotationUrl annotationUrl = new TestAnnotationUrl();
        
        // Récupérer la classe
        Class<?> clazz = annotationUrl.getClass();
        
        // Parcourir toutes les méthodes
        for (Method method : clazz.getDeclaredMethods()) {
            System.out.println("\n--- Analyse méthode: " + method.getName() + " ---");
            
            // Vérifier si l'annotation @Url est présente
            if (method.isAnnotationPresent(Url.class)) {
                Url urlAnnotation = method.getAnnotation(Url.class);
                String url = urlAnnotation.value();
                 
                System.out.println("✅ ANNOTATION @Url TROUVÉE !");
                System.out.println("URL mappée: " + url);
                System.out.println("Méthode: " + method.getName());
                
                // Optionnel: tester l'exécution de la méthode
                try {
                    Object result = method.invoke(annotationUrl);
                    System.out.println("Résultat méthode: " + result);
                } catch (Exception e) {
                    System.out.println("Erreur execution: " + e.getMessage());
                }
            } else {
                System.out.println("❌ PAS d'annotation @Url sur cette méthode");
            }
        }
        
        System.out.println("\n=== FIN TEST ===");
    }
}