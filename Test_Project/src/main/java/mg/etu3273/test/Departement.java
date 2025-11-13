package mg.etu3273.test;

public class Departement {
    private int id;
    private String nom;
    private String localisation;
    private int nombreEmployes;
    
    public Departement() {
    }
    
    public Departement(int id, String nom, String localisation, int nombreEmployes) {
        this.id = id;
        this.nom = nom;
        this.localisation = localisation;
        this.nombreEmployes = nombreEmployes;
    }
    
    // Getters et Setters
    public int getId() {
        return id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    
    public String getNom() {
        return nom;
    }
    
    public void setNom(String nom) {
        this.nom = nom;
    }
    
    public String getLocalisation() {
        return localisation;
    }
    
    public void setLocalisation(String localisation) {
        this.localisation = localisation;
    }
    
    public int getNombreEmployes() {
        return nombreEmployes;
    }
    
    public void setNombreEmployes(int nombreEmployes) {
        this.nombreEmployes = nombreEmployes;
    }
    
    @Override
    public String toString() {
        return nom + " (" + localisation + ") - " + nombreEmployes + " employés";
    }
}