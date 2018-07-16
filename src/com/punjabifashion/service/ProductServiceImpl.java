package com.punjabifashion.service;

import java.sql.SQLException;
import java.util.List;

import com.punjabifashion.beans.Product;
import com.punjabifashion.dao.ProductDAO;
import com.punjabifashion.dao.ProductDAOImpl;

public class ProductServiceImpl implements ProductService{

	@Override
	public int addProduct(Product product) throws SQLException {
		System.out.println("-->productService:addProduct");
		// TODO Auto-generated method stub
		int res = 0;
		ProductDAO  productDao;
		try {
			if(product !=null){
				productDao= new ProductDAOImpl();
				res = productDao.addProduct(product);
			}
			else{
				res = 100;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("<--productService:addProduct");
		return res;
	}

	@Override
	public int updateProduct(Product product) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteProduct(Product product) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Product> getProducts() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Product getProduct(String id) {
		// TODO Auto-generated method stub
		return null;
	}

}
