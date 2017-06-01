package com.pegasus.DaoImp;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.pegasus.Dao.CartItemDao;
import com.pegasus.model.CartItem;

@Repository
public class CartItemDaoImp implements CartItemDao
{
	@Autowired
	 private SessionFactory sessionFactory;
	
	public void addToCart(CartItem cartItem) {
		Session session=sessionFactory.openSession();
		session.save(cartItem);
		session.flush();
		session.close();
		
	}

	public List<CartItem> getCartItems() {
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from CartItem");
		List<CartItem> cartList=	query.list();
		session.close();
		return cartList;
	}
		
	public List<CartItem> fetchCartItemsByuserId(int userId) {
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from CartItem where userId = "+userId+" and flag = 'N'");
		List<CartItem> cartitemlist=query.list();
		session.close();
		return cartitemlist;
		
	}

	public void deleteFromCart(int id) {
		Session session=sessionFactory.openSession();
		CartItem carItem=(CartItem)session.get(CartItem.class,id);
		session.delete(carItem);
		session.flush();
		session.close();
		
	}

}
