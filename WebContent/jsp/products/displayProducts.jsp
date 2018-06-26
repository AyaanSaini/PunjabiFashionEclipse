<div class='products-display'>
  <div class='row'>
  	<% for(int i=0;i < 17;i++){ %>
    <div class='col-md-3'>    
      <a href='./products/:1'>
      <div class='products-view-product'>        
          <div class='products-view-product-center'>
            <div class='row '>
              <div class='col-md-12 products-view-product-image' >
                <img src='../../images/home/store-12.jpg' alt='men image' width="250px" height='275px'/>
              </div> 
            </div>
            <div class='row'>
              <div class='col-md-12 products-view-product-title'>
                <p class='product-title'>Punjabi Kurta</p>
              </div>
            </div>
            <div class='row'>
              <div class='col-md-6 product-price'>
                <span class='product-price'>$21</span>&nbsp;&nbsp;
                <span class='product-mrp'><del>$39</del> </span>
                <span class='product-discount'>&nbsp;(40%)</span>
              </div>
            
              <div class='col-md-6 product-performance'>
                <span class='product-star'>
                  <span class='glyphicon glyphicon-star'></span>
                  <span class='glyphicon glyphicon-star'></span>
                  <span class='glyphicon glyphicon-star'></span>
                  <span class='glyphicon glyphicon-star'></span>
                </span> 
                <span class='product-reviews'>(1212)</span>
        
              </div>
            </div>
          </div>
        </div>
      </a>
      </div>
      <%} %>
      
  </div>
</div>
