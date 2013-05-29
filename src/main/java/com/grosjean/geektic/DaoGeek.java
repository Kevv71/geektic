package com.grosjean.geektic;
 
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

@Repository
public class DaoGeek {
	
	@PersistenceContext
	private EntityManager em;
	
	public DaoGeek() {
		super();
	}
	
	public List<Geek> findAll() {
		String jpql = "select spectacle from Spectacle spectacle order by spectacle.titre";
		return em.createQuery(jpql, Geek.class).getResultList();
	}
	
	public void persist(Geek spectacle) {
		em.persist(spectacle);
	}
	
	public Geek findById(Long id) {
		return em.find(Geek.class, id);
	}
	
	public List<Geek> findByArtiste(String artiste) {
		/*String jpql = 
			"select spectacle from Spectacle spectacle"
			+ " where lower(spectacle.artiste) like :artiste"
			+ " order by spectacle.titre";
		return em.createQuery(jpql, Geek.class)
				 .setParameter("artiste", "%" + artiste.toLowerCase() + "%")
				 .getResultList();*/
		return null;
		
	}
}
