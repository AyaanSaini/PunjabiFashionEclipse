<div class="delete-product">
	<div class='product-delete-header'>
        <div class='header-name'>Punjabi Fashion Products Inventory</div>
        <div class='header-action'>Remove Products</div>
    </div>
    <hr>
    <form>
    	<div class="row">
    		<div class="col-md-4">
    			<div class="form-group">
    				<input class="form-control" name="product-id" placeholder="Enter Product Id">
    			</div>
    		</div>
    		<div class="col-md-1 label-or" >
    			<div class="form-group">
    				<label>--OR--</label>
    			</div>
    		</div>
    		<div class="col-md-4">
    			<div class="form-group">
    				<input class="form-control" name="product-title" placeholder="Enter Product Title">
    			</div>
    		</div>
    		<div class="col-md-2" >
    			<div class="form-group">
    				<button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-search"></span>Search</button>
    			</div>
    		</div>
    	</div>
    </form>
    <div class="table-header">Find Below Products</div>
    <hr>
    <div class="table-display">
	    <div class="products-display-table">
	    	
	    </div>
	    <table class="table table-striped">
	    	<thead>
	    		<tr>
	    			<th>No.</th>
	    			<th>Product Id</th>
	    			<th>Product Name</th>
	    			<th>Product Description</th>
	    			<th>Product Image</th>
	    			<th></th>
	    		</tr>
	    	</thead>
	    	<tbody>
	    		<tr>
	    			<td>1</td>
	    			<td>pk007</td>
	    			<td>Punjabi Kurta</td>
	    			<td>wefreghrett fgegteh  gre httr rjy  ytj yt yt jt </td>
	    			<td><img alt="kurta iamge" src="" width="100px" height="120px"></td>
	    			<td><button class="btn btn-primary" onclick="funEdit('pk007')">Delete</button></td>
	    		</tr>
	    	</tbody>
	    </table>
	</div>
</div>