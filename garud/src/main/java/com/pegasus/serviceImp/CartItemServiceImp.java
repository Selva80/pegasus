package com.pegasus.serviceImp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pegasus.Dao.CartItemDao;
import com.pegasus.model.CartItem;
import com.pegasus.service.CartItemService;

@Service
public class CartItemServiceImp implements CartItemService {

	@Autowired
	 private CartItemDao cartItemDao;
	
	public void addToCart(CartItem cartItem) {
		cartItemDao.addToCart(cartItem);

	}

	public List<CartItem> getCartItems() {
		
		return cartItemDao.getCartItems();
	}

	public List<CartItem> fetchCartItemsByuserId(int userId) {
		
		return cartItemDao.fetchCartItemsByuserId(userId);
	}

	public void deleteFromCart(int id) {
		cartItemDao.deleteFromCart(id);
	}

	

}
