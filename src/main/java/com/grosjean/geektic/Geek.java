package com.grosjean.geektic;

/**
@author Grosjean_Kévin
**/

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import java.io.Serializable;

@Entity
public class Geek implements Serializable {
    
	/**
	 * 
	 */
	private static final long serialVersionUID = -8776320965095867751L;

    @Id
    @SequenceGenerator(name = "my_generator", sequenceName = "SEQ", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "my_generator")
 
    private long id;
    /* Identifiant du geek */
    private String nom;
    /* Nom du geek */
    private String prenom;
    /* Prenom du geek */ 
    private String date_naissance;
    private String adresse;
    private String ville;
    private String cp;
    /* Email du geek */
    private String email;
    private String login;
    private String password;
   private boolean reglement;
   
    /* Constructeurs de Geek*/
    public Geek() {
        super();
    }
    
    public Geek(long id, String nom, String prenom, String date_naissance, String adresse, String ville, String cp,  String email, String login, String password, boolean reglement) {
        this.id = id;
        this.nom = nom;
        this.prenom = prenom;
        this.date_naissance=date_naissance; 
        this.adresse=adresse;
        this.ville=ville;
        this.cp=cp;
        this.email = email;
        this.login=login;
        this.password=password;
        this.reglement =reglement;
    }
    
    /* Getters / Setters */
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

	public String getVille() {
		return ville;
	}

	public void setVille(String ville) {
		this.ville = ville;
	}

	public String getCp() {
		return cp;
	}

	public void setCp(String cp) {
		this.cp = cp;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAdresse() {
		return adresse;
	}

	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

	public String getDate_naissance() {
		return date_naissance;
	}

	public void setDate_naissance(String date_naissance) {
		this.date_naissance = date_naissance;
	}

	public boolean isReglement() {
		return reglement;
	}

	public void setReglement(boolean reglement) {
		this.reglement = reglement;
	}

	 
  
    
    
}
