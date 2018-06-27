package com.punjabifashion.service;

import java.util.List;

import com.punjabifashion.beans.Product;

public interface ProductService {

	public int addProduct(Product product);
	public int updateProduct(Product product);
	public int deleteProduct(Product product);
	public List<Product> getProducts();
	public Product getProduct(String id);
}
