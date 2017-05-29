package starbudsPackage;
// Generated 25 avr. 2017 16:54:05 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Serveur generated by hbm2java
 */
public class Serveur  implements java.io.Serializable {


     private Integer id;
     private String nom;
     private String prenom;
     private String login;
     private String mdp;
     private boolean enActivite;
     private Set<Commande> commandes = new HashSet<Commande>(0);

    public Serveur() {
    }

    public Serveur(Integer Id, String Nom, String Prenom, boolean Activite)
    {
         id = Id;
         nom = Nom;
         prenom = Prenom;
         enActivite= Activite;
    }
	
    public Serveur(String nom, String prenom, String login, String mdp, boolean enActivite) {
        this.nom = nom;
        this.prenom = prenom;
        this.login = login;
        this.mdp = mdp;
        this.enActivite = enActivite;
    }
    public Serveur(String nom, String prenom, String login, String mdp, boolean enActivite, Set<Commande> commandes) {
       this.nom = nom;
       this.prenom = prenom;
       this.login = login;
       this.mdp = mdp;
       this.enActivite = enActivite;
       this.commandes = commandes;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public String getNom() {
        return this.nom;
    }
    
    public void setNom(String nom) {
        this.nom = nom;
    }
    public String getPrenom() {
        return this.prenom;
    }
    
    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }
    public String getLogin() {
        return this.login;
    }
    
    public void setLogin(String login) {
        this.login = login;
    }
    public String getMdp() {
        return this.mdp;
    }
    
    public void setMdp(String mdp) {
        this.mdp = mdp;
    }
    public boolean isEnActivite() {
        return this.enActivite;
    }
    
    public void setEnActivite(boolean enActivite) {
        this.enActivite = enActivite;
    }
    public Set<Commande> getCommandes() {
        return this.commandes;
    }
    
    public void setCommandes(Set<Commande> commandes) {
        this.commandes = commandes;
    }




}

