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
	public int addProduct(Product product) throws SQLException {
		System.out.println("-->productDAO:addProduct");
		// TODO Auto-generated method stub
		int res =0; 
		//String code = null;
		//code = product.getCategory().substring(0, 2)+product.getSubCategory().substring(0, 2)+DBUtil.getLastIndexProduct();
		//product.setCode(code);
		
		
		if(product != null){
			System.out.println("-->productDAO:addProduct::"+product);
			String q1 = "insert into product(product_name,product_description,product_price,product_discount,product_color,photo,product_catagory,product_fit,stiched) values(?,?,?,?,?,?,?,?,?)";
			String q2 = "insert into product_size_table(fk_product_id,size) values(?,?) ";
			int productId = 0;
			String productSizes[] = product.getSizes();
			try {
				con.setAutoCommit(false);
				PreparedStatement ps1 = con.prepareStatement(q1);
					ps1.setString(1, product.getName());
					ps1.setString(2, product.getDescription());
					ps1.setDouble(3, product.getMrp());
					ps1.setDouble(4, product.getDiscount());
					ps1.setString(5, product.getColors());
					ps1.setBlob(6, product.getPhoto());
					ps1.setString(7, product.getCategory());
					ps1.setString(8, product.getFit());
					ps1.setBoolean(9, product.isStitched());
				ps1.executeUpdate();
				
				PreparedStatement ps = con.prepareStatement("select product_id from product_table ORDER BY product_id DESC LIMIT = 1");
				ResultSet rs = ps.executeQuery();
				if(rs.next()){
					 productId= rs.getInt(1);
					for(int i=0;i<productSizes.length;i++){
						PreparedStatement ps2 = con.prepareStatement(q2);
						ps2.setInt(1, productId);
						ps2.setString(2, productSizes[i]);
					}
					con.commit();
					res= 1;
				}else{
					con.rollback();
					res=0;
				}
					
			} catch (SQLException e) {
				e.printStackTrace();
			}
			finally {
				con.close();
			}
			
			
			
		}else{
			res=100;
		}
		System.out.println("<--productDAO:addProduct");
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
