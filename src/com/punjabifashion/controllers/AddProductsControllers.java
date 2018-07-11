package com.punjabifashion.controllers;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.punjabifashion.beans.Product;
import com.punjabifashion.service.ProductService;
import com.punjabifashion.service.ProductServiceImpl;
import com.punjabifashion.validators.ProductValidation;

@WebServlet("/AddProduct")
@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class AddProductsControllers extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	HttpSession session;
	String message;
	ProductValidation productValidation;
	ProductService productService;

	public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		session = request.getSession();
		if(session.getAttribute("session_user_role").toString().equalsIgnoreCase("admin")){
			Product product = null;
			int res;
			try{
			product = new Product();
			product.setName(request.getParameter("name"));
			product.setDescription(request.getParameter("description"));
			product.setCategory(request.getParameter("category"));
			product.setSubCategory(request.getParameter("subCategory"));
			product.setMrp(request.getParameter("price"));
			product.setDiscount(request.getParameter("discount"));
			product.setGenders(request.getParameterValues("gender"));
			product.setSizes(request.getParameterValues("sizes"));
			product.setColors(request.getParameterValues("colors"));
			Part filePart = request.getPart("img[]");
			System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
			product.setPhoto(filePart.getInputStream());
			}catch(Exception e){
				e.printStackTrace();
			}
			
			try{
				if(product != null){
					productValidation = new ProductValidation();
					String validProduct = productValidation.isValidProduct(product);
					if(validProduct.equals("fine")){
						productService = new ProductServiceImpl();
						res = productService.addProduct(product);
						if(res == 1){
							System.out.println("Product Successfully Added with code"+res);
							message = "Product Successfully Added";
							response.sendRedirect("/Git_Punjabi_Fashion/jsp/admin/home.jsp?message=" + URLEncoder.encode(message, "UTF-8"));
						}
						else{
							System.out.println("Product is Not Successfully Added with code"+res);
							message = "Product Not Added Successfully";
							response.sendRedirect("/Git_Punjabi_Fashion/jsp/admin/home.jsp?error=" + URLEncoder.encode(message, "UTF-8"));
						}						
					}else{
						System.out.println("Product details are not proper"+validProduct);
						message = "Product Not Added Successfully. Please provide proper product information for all fields";
						response.sendRedirect("/Git_Punjabi_Fashion/jsp/admin/home.jsp?error=" + URLEncoder.encode(message, "UTF-8"));
					}
				}
				else{
					System.out.println("Product is null");
					message = "Please provide Product details carefully";
					response.sendRedirect("/Git_Punjabi_Fashion/jsp/admin/home.jsp?error=" + URLEncoder.encode(message, "UTF-8"));
				}
			}catch(Exception e){
				e.printStackTrace();
			}
			
			
			
			
		}else{
			message = "Permission Denied";
			response.sendRedirect("/Git_Punjabi_Fashion/error.jsp?error=" + URLEncoder.encode(message, "UTF-8"));
		}
	}
}
