<nav class="navbar navbar-default navbar-fixed-top ">
  <div class="container-fluid">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>                        
        </button>
        <a class="navbar-brand" href="/Punjabi_Fashion/index.jsp"><span class="navbar-brand">Punjabi Fashion</span>
          <!-- <img src="" class="logo" alt='image'> -->
        </a>          
      </div>
      <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav">
          <li class='dropdown'>
              <a href=""class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Men<span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="/products/men/sherwani">Sherwani</a></li>
                <li><a href="/products/men/kurta">Kurta Payjama</a></li>
                <li><a href="/products/men/turban">Turban</a></li>
                <li><a href="/products/men/jutti">Punjabi Jutti</a></li>
              </ul>
          </li>

          <li class='dropdown'>
              <a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Women<span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="/products/women/suit">Punjabi Suit</a></li>
                <li><a href="/products/women/lahanga">Lahanga</a></li>
                <li><a href="/products/women/saree">Saree</a></li>
                <li><a href="/products/women/jutti">Punjabi Jutti</a></li>
              </ul>
          </li>

          <li class='dropdown'>
              <a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Kids<span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="/products/kids/dress">Dress</a></li>
                <li><a href="/products/kids/footwear">Footwear</a></li>
              </ul>
          </li>

          <li class='dropdown'>
              <a href="" class="dropdown-toggle" data-toggle="dropdown"  aria-haspopup="true" aria-expanded="false">More<span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="/products/more/jewellary">Jewellary</a></li>
                <li><a href="/products/more/gottapatti">Gotta Patti</a></li>
                <li><a href="/products/more/Bangles">Bangles</a></li>
              </ul>
          </li> 

          <li class='dropdown'>
                <a href="/Punjabi_Fashion/jsp/products/main.jsp">All</a>
        </li> 

        </ul>

        <ul class="nav navbar-nav navbar-right">
            
            <li Style="width:200px;text-align: right; margin-top: .4cm; color:white;padding-right:10px; "><span class="glyphicon glyphicon-user" ></span> Username</li>
            
            <%
            	if(session.getAttribute("session_user") == null ||session.getAttribute("session_user").equals("") ){
            %>
            <li><a href="jsp/login/login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
            <%
            	}else{
            %>
            <li><a href="jsp/login/logout.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
            <%} %>
        </ul>
      </div>         
  </div>
</nav>