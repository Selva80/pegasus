package com.pegasus.DaoImp;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.google.gson.Gson;
import com.pegasus.Dao.SupplierDao;
import com.pegasus.model.Supplier;

@Repository
public class SupplierDaoImp implements SupplierDao {
	
	@Autowired
	SessionFactory sessionFactory;
	public void addSupplier(Supplier supplier) {
			Session session=sessionFactory.openSession();
			session.save(supplier);
			session.flush();
			session.close();
		
	}
	public List<Supplier> getAllSupplier() {
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Supplier");
		List<Supplier>  supplierList = query.list();
		session.close();
		return  supplierList;
	}
	public Supplier getSupplierById(int supplierId) {
		Session session=sessionFactory.openSession();
		Supplier supplier=(Supplier)session.get(Supplier.class,supplierId);
		session.close();
		return supplier;
	}
	public void deleteSupplier(int supplierId) {
		Session session=sessionFactory.openSession();
		Supplier supplier=(Supplier)session.get(Supplier.class,supplierId);
		session.delete(supplier);
		session.flush();
		session.close();
		
		
	}
	public String fetchAllSupplierByJson() {
		
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Supplier");
		List<Supplier>  supplierList = query.list();
		Gson g = new Gson();
		String list = g.toJson(supplierList);
		return list; 
	}
	

}
