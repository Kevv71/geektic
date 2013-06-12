package com.grosjean.geektic;

/**
 @author Grosjean_Kévin
 **/

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class DaoGeek {

	@PersistenceContext
	private EntityManager em;
 
 	public DaoGeek() {
		super();
	}

	public List<Geek> findAll() {
		String jpql = "select geek from Geek geek order by geek.nom";
		return em.createQuery(jpql, Geek.class).getResultList();
	}
	
	/* Ajoute un geek*/
	@Transactional
	public void persist(Geek geek) {
		em.persist(geek);
		
	}

	public Geek findById(long id) {
		return em.find(Geek.class, id);
	}
	
}
