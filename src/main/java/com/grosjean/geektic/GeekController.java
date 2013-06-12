package com.grosjean.geektic;

/**
 @author Grosjean_Kévin
 **/

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
 
@Controller
@RequestMapping("/")
public class GeekController {

	@Autowired
	GeekService geekService;

	@RequestMapping(value="/", method = RequestMethod.GET)
	public String viewIndex(){
		return "index";
	}
	
	@RequestMapping(value="/presentation", method = RequestMethod.GET)
	public String viewPresentation(){
		return "presentation";
	}
	
	@RequestMapping(value="/inscription", method = RequestMethod.GET)
	public String viewInscription(ModelMap model){
		model.addAttribute("geek", new Geek());
		return "inscription";
	}
	
	@RequestMapping(value="/inscription_geek", method = RequestMethod.POST)
	public String insererGeek(Geek geek){
		
		geekService.create(geek);
		return "inscription";
	}
	
	
	@RequestMapping(value="/profil", method = RequestMethod.GET)
	public String viewProfil(ModelMap model){
		 
		return "profil";
	}
	
	@RequestMapping(value="/profil/{id}", method=RequestMethod.GET)
	public String detail(@PathVariable("id") Long geekId, ModelMap model) {
		Geek geek = geekService.findById(geekId);
		model.addAttribute("geek", geek);
		return "profil";
	}
	/*@RequestMapping(method = RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView listSpec = new ModelAndView("index");
		listSpec.addObject("listeGeeks",geekService.list());
		return listSpec;
	}

    @RequestMapping(value="/{id}", method = RequestMethod.GET)
    public ModelAndView getSpectacle(@PathVariable("id") long id) {
    	ModelAndView listSpec = new ModelAndView("GeekDetail");
    	listSpec.addObject("geek",geekService.findById(id));
        return listSpec;
    }*/
}