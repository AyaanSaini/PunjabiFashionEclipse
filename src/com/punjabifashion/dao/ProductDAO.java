package com.punjabifashion.dao;

import java.util.List;

import com.punjabifashion.beans.Product;

public interface ProductDAO {

	public int addProduct(Product product);
	public int updateProduct(Product product);
	public int deleteProduct(Product product);
	public List<Product> getProducts();
	public Product getProduct(String id);
	
}
