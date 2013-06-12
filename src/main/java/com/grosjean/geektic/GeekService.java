package com.grosjean.geektic;

/**
@author Grosjean_Kévin
**/

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GeekService {
	
	@Autowired
	private DaoGeek daoGeek;
	
	public GeekService() {
		super();
	}
	
	public List<Geek> list() {
		return daoGeek.findAll();
	}
	
	public Geek findById(long id) {
		return daoGeek.findById(id);
	}
	
	public boolean create(Geek geek){
		
		daoGeek.persist(geek);
		return true;
	}
}
