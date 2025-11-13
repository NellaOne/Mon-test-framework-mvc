package mg.etu3273.test;

public class Person {
    private String nom;
    private int age;
    private String ville;
    
    public Person() {
    }
    
    public Person(String nom, int age, String ville) {
        this.nom = nom;
        this.age = age;
        this.ville = ville;
    }
    
    // Getters et Setters
    public String getNom() {
        return nom;
    }
    
    public void setNom(String nom) {
        this.nom = nom;
    }
    
    public int getAge() {
        return age;
    }
    
    public void setAge(int age) {
        this.age = age;
    }
    
    public String getVille() {
        return ville;
    }
    
    public void setVille(String ville) {
        this.ville = ville;
    }
    
    @Override
    public String toString() {
        return nom + " - " + age + " ans - " + ville;
    }
}