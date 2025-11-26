package mg.etu3273.test;

import mg.etu3273.framework.annotation.Controller;

public class TestControllerAnnotation {
    
    public static void main(String[] args) {
        testClass(Test1.class, false);
        testClass(Test2.class, true);
        testClass(Test3.class, true);
    }
    
    private static void testClass(Class<?> clazz, boolean shouldHaveAnnotation) {
        boolean hasController = clazz.isAnnotationPresent(Controller.class);
        if (hasController == shouldHaveAnnotation) {
            if (hasController) {
                Controller annotation = clazz.getAnnotation(Controller.class);
            }
        } else {
        }
    }
}