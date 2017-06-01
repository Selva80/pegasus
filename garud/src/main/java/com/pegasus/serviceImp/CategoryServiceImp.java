package com.pegasus.serviceImp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pegasus.Dao.CategoryDao;
import com.pegasus.model.Category;
import com.pegasus.service.CategoryService;

@Service
public class CategoryServiceImp implements CategoryService {

	@Autowired
	private CategoryDao categoryDao;
	public List<Category> getAllCategories() {
		return categoryDao.getAllCategories();
		
	}
	

}
