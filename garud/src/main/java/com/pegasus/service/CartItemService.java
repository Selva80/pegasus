package com.pegasus.service;

import java.util.List;

import com.pegasus.model.CartItem;

public interface CartItemService {
		
	public void addToCart(CartItem cartItem);
	public List<CartItem> getCartItems();
	public List<CartItem> fetchCartItemsByuserId(int userId);
	public void deleteFromCart(int id);
}
