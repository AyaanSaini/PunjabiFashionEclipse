package com.punjabifashion.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.punjabifashion.beans.Product;
import com.punjabifashion.utils.DBUtil;

public class ProductDAOImpl implements ProductDAO {

	Connection con  = DBUtil.getConnection();
	@Override
	public int addProduct(Product product) {
		// TODO Auto-generated method stub
		int res =0; 
		String code = null;
		code = product.getCategory().substring(0, 2)+product.getSubCategory().substring(0, 2)+DBUtil.getLastIndexProduct();
		product.setCode(code);
		PreparedStatement ps;
		
		if(product != null){
			String q1 = "insert into product(product_name,product_description,product_price,product_discount,product_color,photo) values(?,?,?,?,?,?)";
			String q2 = "select pk_product_id from product_table GROUP BY pk_product_id DESC LIMIT 1 ";
			String q3 = "insert into ";
		}else{
			res=100;
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
