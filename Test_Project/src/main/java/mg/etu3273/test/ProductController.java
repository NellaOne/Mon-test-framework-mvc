package mg.etu3273.test;

import mg.etu3273.framework.ModelView;
import mg.etu3273.framework.annotation.Controller;
import mg.etu3273.framework.annotation.Url;

@Controller
public class ProductController {
    
    @Url("/product/{id}")
    public ModelView getProduct(Integer id) {
        System.out.println("✅ ProductController.getProduct(" + id + ")");
        
        ModelView mv = new ModelView("product_detail.jsp");
        mv.addObject("message", "Détail du produit");
        mv.addObject("productId", id);
        
        return mv;
    }
    
    @Url("/product/{id}/delete")
    public String deleteProduct(Integer id) {
        System.out.println("✅ ProductController.deleteProduct(" + id + ")");
        return "Produit supprimé (id=" + id + ") - Sprint 3-bis fonctionne !";
    }
    
    @Url("/category/{categoryId}/products")
    public ModelView getProductsByCategory(Integer categoryId) {
        System.out.println("✅ ProductController.getProductsByCategory(" + categoryId + ")");
        
        ModelView mv = new ModelView("category_products.jsp");
        mv.addObject("categoryId", categoryId);
        mv.addObject("message", "Produits de la catégorie");
        
        return mv;
    }
}