package mg.etu3273.test;

import mg.etu3273.framework.annotation.Controller;

/**
 * Programme pour tester l'annotation @Controller
 * Similaire au test de l'annotation @Url
 * Sprint 2 bis
 */
public class TestControllerAnnotation {
    
    public static void main(String[] args) {
        System.out.println("╔═══════════════════════════════════════════════════════╗");
        System.out.println("║   TEST ANNOTATION @Controller - SPRINT 2 BIS          ║");
        System.out.println("╚═══════════════════════════════════════════════════════╝");
        System.out.println();
        
        // Tester Test1 (SANS @Controller)
        testClass(Test1.class, false);
        
        // Tester Test2 (AVEC @Controller)
        testClass(Test2.class, true);
        
        // Tester Test3 (AVEC @Controller)
        testClass(Test3.class, true);
        
        System.out.println();
        System.out.println("╔═══════════════════════════════════════════════════════╗");
        System.out.println("║   TEST TERMINÉ                                        ║");
        System.out.println("╚═══════════════════════════════════════════════════════╝");
    }
    
    /**
     * Teste si une classe a l'annotation @Controller
     */
    private static void testClass(Class<?> clazz, boolean shouldHaveAnnotation) {
        System.out.println("─────────────────────────────────────────────────────");
        System.out.println("Classe testée: " + clazz.getSimpleName());
        System.out.println("─────────────────────────────────────────────────────");
        
        // Vérifier si l'annotation @Controller est présente
        boolean hasController = clazz.isAnnotationPresent(Controller.class);
        
        System.out.println("Annotation @Controller présente: " + hasController);
        System.out.println("Attendu: " + shouldHaveAnnotation);
        
        if (hasController == shouldHaveAnnotation) {
            System.out.println("✅ TEST RÉUSSI !");
            if (hasController) {
                Controller annotation = clazz.getAnnotation(Controller.class);
                System.out.println("   → Annotation récupérée: " + annotation);
            }
        } else {
            System.out.println("❌ TEST ÉCHOUÉ !");
        }
        System.out.println();
    }
}