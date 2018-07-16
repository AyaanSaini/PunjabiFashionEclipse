package com.punjabifashion.service;

import java.sql.SQLException;
import java.util.List;

import com.punjabifashion.beans.Product;

public interface ProductService {

	public int addProduct(Product product) throws SQLException;
	public int updateProduct(Product product)throws SQLException;
	public int deleteProduct(Product product)throws SQLException;
	public List<Product> getProducts()throws SQLException;
	public Product getProduct(String id)throws SQLException;
}
