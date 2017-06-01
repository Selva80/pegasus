package com.pegasus.Dao;

import java.util.List;

import com.pegasus.model.Product;

public interface ProductDao {

	void saveProduct(Product product);
	List<Product> getAllProducts();

	Product getProductById(int id);
	void deleteProduct(int id);
	void updateProduct(Product product);

	
}
