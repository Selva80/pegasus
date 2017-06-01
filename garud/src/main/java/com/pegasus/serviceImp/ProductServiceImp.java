package com.pegasus.serviceImp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pegasus.Dao.ProductDao;
import com.pegasus.model.Product;
import com.pegasus.service.ProductService;

@Service
public class ProductServiceImp implements ProductService {

	@Autowired
	 private ProductDao productDao;
	public void saveProduct(Product product) 
	{
		productDao.saveProduct(product);

	}
	public List<Product> getAllProducts() {
		return productDao.getAllProducts();
	}
	public Product getProductById(int id) {
		
	return	productDao.getProductById(id);
	}
	public void deleteProduct(int id) {
		 
		productDao.deleteProduct(id);
		
	}
	public void updateProduct(Product product) {
		productDao.updateProduct(product);
		
	}

}
