package mg.etu3273.test;
import java.lang.reflect.Method;
import mg.etu3273.framework.annotation.Url;
public class TestAnnotationMain {
    public static void main(String[] args) {
        TestAnnotationUrl annotationUrl = new TestAnnotationUrl();        
        Class<?> clazz = annotationUrl.getClass();
        for (Method method : clazz.getDeclaredMethods()) {
            if (method.isAnnotationPresent(Url.class)) {
                Url urlAnnotation = method.getAnnotation(Url.class);
                String url = urlAnnotation.value();        
                try {
                    Object result = method.invoke(annotationUrl);
                } catch (Exception e) {
                }
            } else {
            }
        }        
    }
}