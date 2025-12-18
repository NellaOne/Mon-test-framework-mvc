package mg.etu3273.test.model;


public class Department {
    private String nom;
    private String code;
    private Integer budget;
    
    public Department() {
    }
    
    public Department(String nom, String code) {
        this.nom = nom;
        this.code = code;
    }

    // Getters et setters
    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public Integer getBudget() {
        return budget;
    }

    public void setBudget(Integer budget) {
        this.budget = budget;
    }

    @Override
    public String toString() {
        return "Department{" +
                "nom='" + nom + '\'' +
                ", code='" + code + '\'' +
                ", budget=" + budget +
                '}';
    }
}