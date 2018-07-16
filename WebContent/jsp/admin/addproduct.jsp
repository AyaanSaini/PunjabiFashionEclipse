<%
	String[] menCategory = {"Clothing","Footwear","Jewellery"};
	String[] womenCategory = {"Clothing","Footwear","Jewellery","Gota Patti","Bangles"};
	String[] kidsCategory = {"Clothing","Footwear","Jewellery","Bangles"};
	
	
	String[] menClothingFit = {"Slim Fit","Skiny Fit","Regular Fit"};
	String[] womenClothingFit = {"Slim Fit","Skiny Fit","Regular Fit"};
	String[] kidsClothingFit = {""};
	
	String[] clothingSizes = {"XXS","XS","S","M","L","XL","XXL","XXXL"};
	
	String[] kidsClothingSizes = {"New Born","4","6","8","10","12","14","16"};
	
	String[] footwearSizes = {"4","5","5.5","6","6.5","7","8","9","10","10.5","11","12"};
	String[] kidsFootWearSizes = new String[24];
	int k=16;
	for(int i=0;i<24;i++){
		kidsFootWearSizes[i] = ""+(k++);
	}
	
	String[] colors = {"beige","black","blue","bronze","brown","burgundy","charcol","coffee brown","coral","cream","fluorescent","gold","gray","green","khaki","lime","magenta","maroon","mauve","multi","mustard","navy","off white","olive","orange","peach","pink","puple","red","rose","rust","saffron","silver","steal","taupe","teal","torquoise","white","yellow"};
	
%>


<div class="add-product" >


	
	<div class='product-entry-header'>
        <div class='header-name'>Punjabi Fashion Products Inventory</div>
        <div class='header-action'>Product Entry</div>
    </div>
    <hr>
      <form action="${pageContext.request.contextPath}/AddProduct" method="post" enctype="multipart/form-data">
      	<div class="form-group">   
		      <div class="row">
		      		<div class="col-md-4 check-gender">     
				      	<div class="radio">
					      <label><input type="radio" id="gender" name="gender" value="male" onclick="genderFun('men')">Men</label>
					    </div>
				   	</div>
				   <div class="col-md-4">
					    <div class="radio">
					      <label><input type="radio" id="gender" name="gender" value="female" onclick="genderFun('women')">Women</label>
					    </div>
				    </div>
				    <div class="col-md-4">
					    <div class="radio">
					      <label><input type="radio" id="gender" name="gender" value="kids" onclick="genderFun('kids')">Kids</label>
					    </div>
				    </div>
			    </div>
			  </div>
        
        <div class='form-group'>
        	<select class="form-control" name="category" id="category" onchange="categoryFun()" required>
        		<option>Select A Category</option>
        		<option id='all' value="clothing">Clothing</option>
        		<option id="all" value="footwear">Footwear</option>
        		<option id="all" value="jewellary">Jewellary</option>
        		<option id="women" value="gottaPatti">Gotta patti</option>
        		<option id="women" value="bangles" >Bangles</option>
        	</select>
        </div>
        
        <div class='form-group stitched-div' id = "stitched">
        	<select class="form-control" name="stitched" required>
        		<option>Stitched</option>
        		<option value="true">Yes</option>
        		<option value="false">No</option>        		
        	</select>
        </div>
        
        <div class='form-group fit-div' id = "fitdiv">
        	<select class="form-control" name="fit" required>
        		<option>Select A Fitting</option>
        		<option value="slim">Slim Fit</option>
        		<option value="skiny">Skiny Fit</option>
        		<option value="regular">Regular Fit</option>
        	</select>
        </div>
        <div class='form-group color-div' id="color">
        	<select class="form-control"  name="color" required >
        	<option>Select A Color</option>
        	<%for(String color:colors){ %>
        		<option value="<%=color%>"><%=color%></option>
        	<% }%>
        	</select>
        </div>
        <!-- Men/Women Clothing Sizes -->
        <div class='form-group sizes-div' id="clothing-sizes" >
        	<select class="form-control" name="size" required >
        		<option>Select sizes</option>
        		 <%for(String size:clothingSizes){ %>
        		<option value="<%=size%>"><%=size%></option>
        	<% }%>  		
        	</select>
        </div>
        
        <!-- Kids Clothing Sizes -->
         <div class='form-group sizes-div' id="kids-clothing-sizes" >
        	<select class="form-control" name="size" required >
        		<option>Select sizes</option>
        		 <%for(String size:kidsClothingSizes){ %>
        		<option value="<%=size%>"><%=size%></option>
        	<% }%>  		
        	</select>
        </div>
        
        <!-- Men/Women Footwear Sizes -->
         <div class='form-group sizes-div' id="footwear-sizes" >
        	<select class="form-control" name="size" required >
        		<option>Select sizes</option>
        		 <%for(String size:footwearSizes){ %>
        		<option value="<%=size%>"><%=size%></option>
        	<% }%>  		
        	</select>
        </div>
        
        <!-- Kids Footwear Sizes -->
         <div class='form-group sizes-div' id="kids-footwear-sizes" >
        	<select class="form-control" name="size" required >
        		<option>Select sizes</option>
        		 <%for(String size:kidsFootWearSizes){ %>
        		<option value="<%=size%>"><%=size%></option>
        	<% }%>  		
        	</select>
        </div>
        
        
        
        
        
        <div class='form-group'>
        	<input class="form-control" name="name" type="text" placeholder="Enter Product Name" required>
        </div>
        <div class='form-group'>
        	<textarea class="form-control" name="description" placeholder=" Enter Product Description" row="4" column="250" required></textarea>
        </div>
        <div class='form-group'>
        	<input class="form-control" name="price" type="text" placeholder="Enter MRP" required>
        </div>
        <div class='form-group'>
        	<input class="form-control" name="discount" type="text" placeholder="Enter Discount" required>
        </div>
        <div class="form-group">
		    <input type="file" name="img[]" class="file" required>
		    <div class="input-group col-xs-12">
		      <span class="input-group-addon"><i class="glyphicon glyphicon-picture"></i></span>
		      <input type="text" class="form-control input-lg" disabled placeholder="Upload Image">
		      <span class="input-group-btn">
		        <button class="browse btn btn-primary input-lg" type="button"><i class="glyphicon glyphicon-search"></i> Browse</button>
		      </span>
		    </div>
		  </div>
		  <div class="form-group"><label>Maximum file size should be 10MB*</label></div>
		  	<div class='message'>${param.message}</div>
    		<div class='error'>${param.error}</div>
        <div class='form-group'>
        	<div class="row">
        		<div class="col-md-3"></div>
        		<div class="col-md-3">
        			<button type="submit" name="add" class="btn btn-primary">Add Product</button>
        		</div>
        		<div class="col-md-3">
        			<button type="reset" name="reset" class="btn btn-warning">Reset</button>
        		</div>
        		<div class="col-md-3"></div>
        	</div>
        	
        </div>
       </form>
       
</div>