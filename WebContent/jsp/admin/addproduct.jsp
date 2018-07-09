	<div class='header'>
        <div class='header-name'>Punjabi Fashion Products Inventory</div>
        <div class='header-action'>Product Entry</div>
    </div>
    <hr>
      <form>        
      	<div class="checkbox">
	      <label><input type="checkbox" checked value="male">Male</label>
	    </div>
	    <div class="checkbox">
	      <label><input type="checkbox" value="female">Female</label>
	    </div>
	    <div class="checkbox">
	      <label><input type="checkbox" value="kids" >Kids</label>
	    </div>
	    
        <div class='form-group'>
        	<select name="category">
        		<option disabled>Select A Category</option>
        		<option>Clothing</option>
        		<option>Footwear</option>
        		<option>Jewellary</option>
        		<option>Gotta patti</option>
        		<option>Bangales</option>
        	</select>
        </div>
        
        <div class='form-group'>
        	<select name="subCategory">
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
        	<select name="color">
        		<option value="red">red</option>
        	</select>
        </div>
        <div class='form-group'>
        	<select name="size">
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
        	<input class="form-contol" name="productName" type="text" placeholder="Enter Product Name">
        </div>
        <div class='form-group'>
        	<textarea class="form-control" name="productDescription" placeholder=" Enter Product Description">
        </div>
        <div class='form-group'>
        	<input class="form-control" name="price" type="text" placeholder="Enter MRP">
        </div>
        <div class='form-group'>
        	<input class="form-control" name="discount" type="text" placeholder="Enter Discount">
        </div>
        <div class='form-group'>
        	<input type="file" name="productPicture" value="Browse">
        </div>
        <div class='form-group'>
        	<button type="submit" name="Add Product"></button>
        	<button type="reset" name="Reset"></button>
        </div>
       </form>