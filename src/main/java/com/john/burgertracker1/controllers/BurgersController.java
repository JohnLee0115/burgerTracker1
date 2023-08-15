package com.john.burgertracker1.controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.john.burgertracker1.models.Burger;
import com.john.burgertracker1.services.BurgerService;

import jakarta.validation.Valid;

@Controller
public class BurgersController {
	
	private final BurgerService burgerService;
	
	public BurgersController(BurgerService burgerService) {
		this.burgerService = burgerService;
	}
	
	@GetMapping("/")
	public String burgers(@ModelAttribute("burger") Burger burger, Model model) {
		List<Burger> burgers = burgerService.allBurgers();
		model.addAttribute("burgers", burgers);
		return "index.jsp";
	}
	@PostMapping("/burgers")
	public String create(@Valid @ModelAttribute("burger") Burger burger, BindingResult result, Model model) {
		if(result.hasErrors()) {
			List<Burger> burgers = burgerService.allBurgers();
			model.addAttribute("burgers", burgers);
			
			return "index.jsp";
		} else {
			burgerService.createBurger(burger);
			return"redirect:";
		}
	}
}
