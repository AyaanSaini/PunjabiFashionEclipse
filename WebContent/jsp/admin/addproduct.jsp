<div class="add-product">
	
	<div class='product-entry-header'>
        <div class='header-name'>Punjabi Fashion Products Inventory</div>
        <div class='header-action'>Product Entry</div>
    </div>
    <hr>
      <form>
      	<div class="form-group">   
		      <div class="row">
		      		<div class="col-md-4 check-gender">     
				      	<div class="checkbox">
					      <label><input type="checkbox" checked value="male">Male</label>
					    </div>
				   	</div>
				   <div class="col-md-4">
					    <div class="checkbox">
					      <label><input type="checkbox" value="female">Female</label>
					    </div>
				    </div>
				    <div class="col-md-4">
					    <div class="checkbox">
					      <label><input type="checkbox" value="kids" >Kids</label>
					    </div>
				    </div>
			    </div>
			  </div>
        
        <div class='form-group'>
        	<select class="form-control" name="category">
        		<option disabled>Select A Category</option>
        		<option>Clothing</option>
        		<option>Footwear</option>
        		<option>Jewellary</option>
        		<option>Gotta patti</option>
        		<option>Bangales</option>
        	</select>
        </div>
        
        <div class='form-group'>
        	<select class="form-control" name="subCategory">
        		<option disabled>Select A Sub Category</option>
        		<optgroup label="clothing-male">
        			<option></option>
        		</optgroup>
        		<optgroup label="clothing-female">
        			<option></option>
        		</optgroup>
        		<optgroup label="clothing-kids">
        			<option></option>
        		</optgroup>
        		
        		<optgroup label="footwear-male">
        			<option></option>
        		</optgroup>        		
        		<optgroup label="footwear-female">
        			<option></option>
        		</optgroup>        		
        		<optgroup label="footwear-kids">
        			<option></option>
        		</optgroup>
        	</select>
        </div>
        <div class='form-group'>
        	<select class="form-control" name="color">
        		<option value="red">red</option>
        	</select>
        </div>
        <div class='form-group'>
        	<select class="form-control" name="size">
        		<option disabled="disabled">Select sizes</option>
        		<optgroup label="clothing-male-size">
        			<option value="">XXL</option>
        		</optgroup>
        		<optgroup label="clothing-female-size">
        			<option value="">XXL</option>
        		</optgroup>
        		<optgroup label="clothing-kids-size">
        			<option value="">XXL</option>
        		</optgroup>
        		
        		<optgroup label="footwear-male-size">
        			<option value="">8</option>
        		</optgroup>
        		<optgroup label="footwear-female-size">
        			<option value="">8</option>
        		</optgroup>
        		<optgroup label="footwear-kids-size">
        			<option value="">8</option>
        		</optgroup>
        		
        	</select>
        </div>
        
        <div class='form-group'>
        	<input class="form-control" name="productName" type="text" placeholder="Enter Product Name">
        </div>
        <div class='form-group'>
        	<textarea class="form-control" name="productDescription" placeholder=" Enter Product Description" row="4" column="250"></textarea>
        </div>
        <div class='form-group'>
        	<input class="form-control" name="price" type="text" placeholder="Enter MRP">
        </div>
        <div class='form-group'>
        	<input class="form-control" name="discount" type="text" placeholder="Enter Discount">
        </div>
        <div class="form-group">
		    <input type="file" name="img[]" class="file">
		    <div class="input-group col-xs-12">
		      <span class="input-group-addon"><i class="glyphicon glyphicon-picture"></i></span>
		      <input type="text" class="form-control input-lg" disabled placeholder="Upload Image">
		      <span class="input-group-btn">
		        <button class="browse btn btn-primary input-lg" type="button"><i class="glyphicon glyphicon-search"></i> Browse</button>
		      </span>
		    </div>
		  </div>
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