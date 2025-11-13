package mg.etu3273.test;

import java.util.Map;

import mg.etu3273.framework.scanner.Mapping;
import mg.etu3273.framework.scanner.PackageScanner;

public class TestScanMain {
    
    public static void main(String[] args) {
        System.out.println("╔═══════════════════════════════════════════════════════════╗");
        System.out.println("║                                                           ║");
        System.out.println("║   TEST SCAN CONTRÔLEURS - SPRINT 2 BIS                    ║");
        System.out.println("║   Test isolé SANS intégration framework                   ║");
        System.out.println("║                                                           ║");
        System.out.println("╚═══════════════════════════════════════════════════════════╝");
        System.out.println();
        
        try {
            // Le développeur spécifie le package de base à scanner
            String packageToScan = "mg.etu3273";
            
            System.out.println("📦 Package à scanner: " + packageToScan);
            System.out.println("⏳ Lancement du scan...");
            System.out.println();
            
            // Lancer le scan avec PackageScanner
            Map<String, Mapping> urlMappings = PackageScanner.scanControllers(packageToScan);
            
            // Afficher les résultats attendus
            System.out.println("╔═══════════════════════════════════════════════════════════╗");
            System.out.println("║   RÉSULTATS ATTENDUS                                      ║");
            System.out.println("╚═══════════════════════════════════════════════════════════╝");
            System.out.println();
            System.out.println("✅ Test2 DOIT être détecté (a @Controller)");
            System.out.println("✅ Test3 DOIT être détecté (a @Controller)");
            System.out.println("❌ Test1 NE DOIT PAS être détecté (n'a pas @Controller)");
            System.out.println();
            
            // Afficher la Map finale URL → Mapping
            System.out.println("╔═══════════════════════════════════════════════════════════╗");
            System.out.println("║   MAP URL → MAPPING FINALE                                ║");
            System.out.println("╚═══════════════════════════════════════════════════════════╝");
            System.out.println();
            
            if (urlMappings.isEmpty()) {
                System.out.println("⚠️  AUCUNE URL MAPPÉE");
                System.out.println("Vérifiez que :");
                System.out.println("  - Les classes Test2 et Test3 sont compilées");
                System.out.println("  - Les classes sont dans le classpath");
                System.out.println("  - Les annotations @Controller et @Url sont présentes");
            } else {
                System.out.println("✅ " + urlMappings.size() + " URLs mappées trouvées:");
                System.out.println();
                
                int i = 1;
                for (Map.Entry<String, Mapping> entry : urlMappings.entrySet()) {
                    Mapping mapping = entry.getValue();
                    System.out.println("  " + i + ". URL: " + entry.getKey());
                    System.out.println("     └─ Classe: " + mapping.getClassName());
                    System.out.println("     └─ Méthode: " + mapping.getMethod().getName() + "()");
                    System.out.println("     └─ Type retour: " + mapping.getMethod().getReturnType().getSimpleName());
                    System.out.println();
                    i++;
                }
            }
            
            // Vérifications automatiques
            System.out.println("╔═══════════════════════════════════════════════════════════╗");
            System.out.println("║   VÉRIFICATIONS AUTOMATIQUES                              ║");
            System.out.println("╚═══════════════════════════════════════════════════════════╝");
            System.out.println();
            
            boolean test2Found = urlMappings.values().stream()
                .anyMatch(m -> m.getClassName().contains("Test2"));
            boolean test3Found = urlMappings.values().stream()
                .anyMatch(m -> m.getClassName().contains("Test3"));
            boolean test1Found = urlMappings.values().stream()
                .anyMatch(m -> m.getClassName().contains("Test1"));
            
            System.out.println((test2Found ? "✅" : "❌") + " Test2 détecté: " + test2Found);
            System.out.println((test3Found ? "✅" : "❌") + " Test3 détecté: " + test3Found);
            System.out.println((!test1Found ? "✅" : "❌") + " Test1 NON détecté: " + !test1Found);
            System.out.println();
            
            if (test2Found && test3Found && !test1Found) {
                System.out.println("╔═══════════════════════════════════════════════════════════╗");
                System.out.println("║                                                           ║");
                System.out.println("║   🎉 TEST TERMINÉ AVEC SUCCÈS ! 🎉                        ║");
                System.out.println("║                                                           ║");
                System.out.println("║   Tous les contrôleurs ont été correctement détectés.    ║");
                System.out.println("║   Vous pouvez maintenant intégrer avec le framework.     ║");
                System.out.println("║                                                           ║");
                System.out.println("╚═══════════════════════════════════════════════════════════╝");
            } else {
                System.out.println("╔═══════════════════════════════════════════════════════════╗");
                System.out.println("║   ⚠️  ATTENTION: Des problèmes ont été détectés           ║");
                System.out.println("╚═══════════════════════════════════════════════════════════╝");
            }
            
        } catch (Exception e) {
            System.out.println();
            System.out.println("╔═══════════════════════════════════════════════════════════╗");
            System.out.println("║   ❌ ERREUR LORS DU TEST                                   ║");
            System.out.println("╚═══════════════════════════════════════════════════════════╝");
            System.out.println();
            System.err.println("Message: " + e.getMessage());
            System.err.println();
            System.err.println("Stack trace:");
            e.printStackTrace();
        }
    }
}