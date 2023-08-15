package com.john.burgertracker1.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.john.burgertracker1.models.Burger;
import com.john.burgertracker1.repositories.BurgerRepository;

@Service
public class BurgerService {
	private final BurgerRepository burgerRepository;
	
	public BurgerService(BurgerRepository burgerRepository) {
		this.burgerRepository = burgerRepository;
	}
	
	public List<Burger> allBurgers() {
		return burgerRepository.findAll();
		
	}
	
	public Burger createBurger(Burger b) {
		return burgerRepository.save(b);
	}
	
	public Burger findBurger(Long id) {
		Optional<Burger> optionalBurger = burgerRepository.findById(id);
		if (optionalBurger.isPresent()) {
			return optionalBurger.get();
		} else {
			return null;
		}
	}
	
	public Burger updateBurger(Long id, String burgerName, String restaurantName, Integer rating, String notes) {
		Burger update = this.findBurger(id);
		update.setBurgerName(burgerName);
		update.setRestaurantName(restaurantName);
		update.setRating(rating);
		update.setNotes(notes);
		
		return burgerRepository.save(update);
	}
	
	public void deleteBurger(Long id) {
		
		burgerRepository.deleteById(id);
	}
	
}
