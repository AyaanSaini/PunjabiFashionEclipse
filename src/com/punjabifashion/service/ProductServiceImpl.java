package com.punjabifashion.service;

import java.util.List;

import com.punjabifashion.beans.Product;
import com.punjabifashion.dao.ProductDAO;
import com.punjabifashion.dao.ProductDAOImpl;

public class ProductServiceImpl implements ProductService{

	@Override
	public int addProduct(Product product) {
		// TODO Auto-generated method stub
		int res = 0;
		ProductDAO  productDao;
		if(product !=null){
			productDao= new ProductDAOImpl();
			res = productDao.addProduct(product);
		}
		else{
			res = 100;
		}
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
