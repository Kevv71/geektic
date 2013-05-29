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
	private DaoGeek Daogeek;
	
	public GeekService() {
		super();
	}
	
	public List<Geek> list() {
		return Daogeek.findAll();
	}
	

}
