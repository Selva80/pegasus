package com.pegasus.Dao;

import java.util.List;

import com.pegasus.model.CartItem;

public interface CartItemDao {

	public void addToCart(CartItem cartItem);
	public List<CartItem> getCartItems();
	public List<CartItem> fetchCartItemsByuserId(int userId);
	public void deleteFromCart(int id);
}
