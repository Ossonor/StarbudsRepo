package starbudsPackage;
// Generated 25 avr. 2017 16:54:05 by Hibernate Tools 4.3.1



/**
 * Produit generated by hbm2java
 */
public class Produit  implements java.io.Serializable {


     private Integer id;
     private String libelle;
     private float prix;

    public Produit() {
    }

    public Produit(String libelle, float prix) {
       this.libelle = libelle;
       this.prix = prix;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public String getLibelle() {
        return this.libelle;
    }
    
    public void setLibelle(String libelle) {
        this.libelle = libelle;
    }
    public float getPrix() {
        return this.prix;
    }
    
    public void setPrix(float prix) {
        this.prix = prix;
    }




}


