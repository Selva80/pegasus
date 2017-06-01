package com.pegasus.service;

import java.util.List;

import com.pegasus.model.Supplier;

public interface SupplierService {

	public void addSupplier(Supplier supplier);

	public List<Supplier> getAllSupplier();

	public Supplier getSupplierById(int supplierId);

	public void deleteSupplier(int supplierId);
	
	public String fetchAllSupplierByJson();
}
