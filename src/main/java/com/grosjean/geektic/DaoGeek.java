package com.grosjean.geektic;

/**
@author Grosjean_Kévin
**/

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
		String jpql = "select geek from Geek geek";
		return em.createQuery(jpql, Geek.class).getResultList();
	}
	
	public void persist(Geek geek) {
		em.persist(geek);
	}
	
	public Geek findById(int id) {
		return em.find(Geek.class, id);
	}
	
	public List<Geek> findByGeek(String geek) {
		/*String jpql = 
			"select geek from Geek geek"
			+ " where lower(spectacle.artiste) like :artiste"
			+ " order by spectacle.titre";
		return em.createQuery(jpql, Geek.class)
				 .setParameter("artiste", "%" + artiste.toLowerCase() + "%")
				 .getResultList();*/
		return null;
		
	}
}
