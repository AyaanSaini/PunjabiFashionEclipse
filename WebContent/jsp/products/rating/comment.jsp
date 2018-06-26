<div class='row'>
<!-- display comments section -->
	<div class="col-md-6">
                <div class='product-comment-section'>
                    <div class='comment-title'>Comments</div>
                    <hr>
                    
                    
                    <div class='display-comments'>
                            <div class='comments'>
                            <% 
                            	for(int i=0;i<5;i++){
                            		%>
                                    <div class='comment'>
                                        <div class='comment-username'>
                                            <span class='name'>Gaurav Suman</span>
                                            <span class='product-star'>
                                                    <span class='glyphicon glyphicon-star'></span>
                                                    <span class='glyphicon glyphicon-star'></span>
                                                    <span class='glyphicon glyphicon-star'></span>
                                                    <span class='glyphicon glyphicon-star'></span>
                                            </span> 
                                        </div>
                                        <div class='comment-comment'>
                                            <p class='comment-comments'>Nice Product!</p>
                                        </div>
                                    </div>
                            	<% } %>
                                </div>
                    </div>
            </div>
        </div>
        
        <!-- Add comments section -->
        <div class="col-md-6">
        	<div class='product-comment-section'>
                    <div class='comment-title'>Add Comment</div>
                    <hr>
                    <button type="button" id="showCommentBox" class="btn btn-primary" onclick="showCommentBox()" >Add Review</button>
                    
           </div>
        </div>
  </div>