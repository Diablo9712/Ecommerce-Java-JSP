<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet" %>
 
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Yoga Studio Template">
    <meta name="keywords" content="Yoga, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Smart Shop</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900&display=swap"
        rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
      <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <style>
/*
** Style Simple Ecommerce Theme for Bootstrap 4
** Created by T-PHP https://t-php.fr/43-theme-ecommerce-bootstrap-4.html
*/
.bloc_left_price {
    color: #c01508;
    text-align: center;
    font-weight: bold;
    font-size: 150%;
}
.category_block li:hover {
    background-color: #007bff;
}
.category_block li:hover a {
    color: #ffffff;
}
.category_block li a {
    color: #343a40;
}
.add_to_cart_block .price {
    color: #c01508;
    text-align: center;
    font-weight: bold;
    font-size: 200%;
    margin-bottom: 0;
}
.add_to_cart_block .price_discounted {
    color: #343a40;
    text-align: center;
    text-decoration: line-through;
    font-size: 140%;
}
.product_rassurance {
    padding: 10px;
    margin-top: 15px;
    background: #ffffff;
    border: 1px solid #6c757d;
    color: #6c757d;
}
.product_rassurance .list-inline {
    margin-bottom: 0;
    text-transform: uppercase;
    text-align: center;
}
.product_rassurance .list-inline li:hover {
    color: #343a40;
}
.reviews_product .fa-star {
    color: gold;
}
.pagination {
    margin-top: 20px;
}
footer {
    background: #343a40;
    padding: 40px;
}
footer a {
    color: #f8f9fa!important
}

</style>
</head>

<body>
<form method="post" action="#" onchange="submit();">
<%
String x="" ;
String vvvvv="";
String nombre="";
String sesion,sesssion;
String f,kl=null;
PreparedStatement stmtf = null;
sesion = (String) session.getAttribute("idd");
sesssion = (String) session.getAttribute("user");
String hostf = "jdbc:mysql://localhost:3306/ecommerce";
	Connection confn=null;
	Statement statg= null;
	ResultSet ress= null;
Class.forName("com.mysql.jdbc.Driver");
confn = DriverManager.getConnection(hostf,"root","");
statg = confn.createStatement();
String Statementg = "SELECT COUNT(*) as free FROM commande WHERE client_id ="+sesion+" AND date_commande=curdate()";
ress = statg.executeQuery(Statementg);
if(ress.next()){

	
			String goof= ress.getString("free");
			
			if(goof.equals("0")){
			//	out.println(goof);
				String datfa = "INSERT INTO `commande`(`id`, `client_id`, `date_commande`,`livraison`, `etat`)  VALUES(NULL,'"+sesion+"',curdate(),"+Math.random() * 7+",'Not Confirmed')";
				
				stmtf = confn.prepareStatement(datfa);
			//	stmtf.setString(1,sesion);
				stmtf.executeUpdate();
			}
	
			
		}

	


String hostttt = "jdbc:mysql://localhost:3306/ecommerce";
	Connection connttt=null;
	Statement stattttt = null;
	ResultSet restttt = null;
	String ui = sesion;
	int numm = Integer.parseInt(ui);
	
	Class.forName("com.mysql.jdbc.Driver");
	connttt = DriverManager.getConnection(hostttt,"root","");
	stattttt = connttt.createStatement();
	String datatttt = "select max(id) as max from commande where client_id = "+numm;
	restttt = stattttt.executeQuery(datatttt);
	while(restttt.next()){
		
		x = restttt.getString("max");
	}
	
	
	
	
	String hosttttv = "jdbc:mysql://localhost:3306/ecommerce";
	Connection conntttv=null;
	Statement statttttv = null;
	ResultSet resttttv= null;
	String uiv = sesion;
	int nummv = Integer.parseInt(ui);
	
	Class.forName("com.mysql.jdbc.Driver");
	conntttv = DriverManager.getConnection(hostttt,"root","");
	stattttt = connttt.createStatement();
	String datattttv = "select livraison from commande where client_id = "+x;
	resttttv = stattttt.executeQuery(datattttv);
	while(resttttv.next()){
		
		vvvvv = resttttv.getString("livraison");
	}
	
	String hosttttvt = "jdbc:mysql://localhost:3306/ecommerce";
	Connection conntttvt=null;
	Statement statttttvt = null;
	ResultSet resttttvt= null;
	String uivt = sesion;
	int nummvt = Integer.parseInt(ui);
	
	Class.forName("com.mysql.jdbc.Driver");
	conntttvt = DriverManager.getConnection(hostttt,"root","");
	statttttvt = connttt.createStatement();
	String datattttvt = "SELECT COUNT(*) as nombre FROM `detail_commande` where id_commande =   "+x;
	resttttvt = statttttvt.executeQuery(datattttvt);
	while(resttttvt.next()){
		
		nombre = resttttvt.getString("nombre");
	}
	

%>
</form>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>
    
    <!-- Search model -->
	<div class="search-model">
		<div class="h-100 d-flex align-items-center justify-content-center">
			<div class="search-close-switch">+</div>
			<form class="search-model-form">
				<input type="text" id="search-input" placeholder="Search here.....">
			</form>
		</div>
	</div>
	<!-- Search model end -->

    <!-- Header Section Begin -->
    <header class="header-section">
        <div class="container-fluid">
            <div class="inner-header">
                <div class="logo">
                    <a href="./index.html"><img src="img/logo.png" alt=""></a>
                </div>
                <div class="header-right">
                    <img src="img/icons/search.png" alt="" class="search-trigger">
                    <img src="img/icons/man.png" alt="">
                    <a href="card.jsp">
                    <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                    
 <span class="flaticon-shopping-cart"><% out.println(nombre); %>
 </span>                    </a>
                </div>
                <div class="user-access">
                    <a href="#"> <%  out.println(sesssion);%></a>
                    <a href="logout.jsp" class="in">Logout</a>
                </div>
                  <nav class="main-menu mobile-menu">
                    <ul>
                        <li><a class="active" href="./menuclient.jsp">Home</a></li>
                        <li><a href="product_pages.jsp">Shop</a>
                          
                        </li>
                        <li><a href="mescommandes.jsp">Commandes</a></li>
                        <li><a href="myreclamation.jsp">Reclamation</a></li>
                        <li><a href="contact.jsp">Contact</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>
    <!-- Header Info Begin -->
    <div class="header-info">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4">
                    <div class="header-item">
                        <img src="img/icons/delivery.png" alt="">
                        <p>Free shipping on orders over 70DH in Morocco</p>
                    </div>
                </div>
                <div class="col-md-4 text-left text-lg-center">
                    <div class="header-item">
                        <img src="img/icons/voucher.png" alt="">
                        <p>20% Student Discount</p>
                    </div>
                </div>
                <div class="col-md-4 text-left text-xl-right">
                    <div class="header-item">
                    <img src="img/icons/sales.png" alt="">
                    <p>30% off on dresses. Use code: 30OFF</p>
                </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Header Info End -->
    <!-- Header End -->

    <!-- Hero Slider Begin -->
    <section class="hero-slider">
        <div class="hero-items owl-carousel">
            <div class="single-slider-item set-bg" data-setbg="img/slider-1.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1>2020</h1>
                            <h2>Lookbook.</h2>
                            <a href="#" class="primary-btn">See More</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="single-slider-item set-bg" data-setbg="img/slider-2.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1>2020</h1>
                            <h2>Lookbook.</h2>
                            <a href="#" class="primary-btn">See More</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="single-slider-item set-bg" data-setbg="img/slider-3.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1>2020</h1>
                            <h2>Lookbook.</h2>
                            <a href="#" class="primary-btn">See More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Slider End -->

    <!-- Features Section Begin -->
    <section class="features-section spad">
        <div class="features-ads">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="single-features-ads first">
                            <img src="img/icons/f-delivery.png" alt="">
                            <h4>Free shipping</h4>
                            <p>Fusce urna quam, euismod sit amet mollis quis, vestibulum quis velit. Vesti bulum mal
                                esuada aliquet libero viverra cursus. </p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="single-features-ads second">
                            <img src="img/icons/coin.png" alt="">
                            <h4>100% Money back </h4>
                            <p>Urna quam, euismod sit amet mollis quis, vestibulum quis velit. Vesti bulum mal esuada
                                aliquet libero viverra cursus. </p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="single-features-ads">
                            <img src="img/icons/chat.png" alt="">
                            <h4>Online support 24/7</h4>
                            <p>Urna quam, euismod sit amet mollis quis, vestibulum quis velit. Vesti bulum mal esuada
                                aliquet libero viverra cursus. </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Features Box -->
        <div class="features-box">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="single-box-item first-box">
                                    <img src="img/f-box-1.jpg" alt="">
                                    <div class="box-text">
                                        <span class="trend-year">2020 Party</span>
                                        <h2>Jewelry</h2>
                                        <span class="trend-alert">Trend Allert</span>
                                        <a href="#" class="primary-btn">See More</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="single-box-item second-box">
                                    <img src="img/f-box-2.jpg" alt="">
                                    <div class="box-text">
                                        <span class="trend-year">2020 Trend</span>
                                        <h2>Footwear</h2>
                                        <span class="trend-alert">Bold & Black</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="single-box-item large-box">
                            <img src="img/f-box-3.jpg" alt="">
                            <div class="box-text">
                                <span class="trend-year">2020 Party</span>
                                <h2>Collection</h2>
                                <div class="trend-alert">Trend Allert</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
   


 <section class="latest-products spad">
        <div class="container"> 
            <div class="product-filter">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="section-title">
                            <h2>Latest Products</h2>
                        </div>
                        <ul class="product-controls">
                            <li data-filter="*">All</li>
                                           <%  String hostt = "jdbc:mysql://localhost:3306/ecommerce";
 			 		Connection connt=null;
 			 		Statement statt = null;
 			 		ResultSet rest = null;
 			 		Class.forName("com.mysql.jdbc.Driver");
 			 		connt = DriverManager.getConnection(hostt,"root","");
 			 		statt = connt.createStatement();
 			 		String datat ;
 			 		String queryt = request.getParameter("cat");
 			 		
 			 			datat = "select * from categorie";
 			 		//	out.println(query);
 			 	
 			 		rest = statt.executeQuery(datat);
 			 		while(rest.next()){
 			 		%>
                            <li data-filter=".<%= rest.getString("libelle") %>"><%= rest.getString("libelle") %></li>
                            <%} %>
                        </ul>
                        
                   
                </div>
            </div><br><br>
            <div class="row" id="product-list">
                           <%  String host = "jdbc:mysql://localhost:3306/ecommerce";
 			 		Connection conn=null;
 			 		Statement stat = null;
 			 		ResultSet res = null;
 			 		Class.forName("com.mysql.jdbc.Driver");
 			 		conn = DriverManager.getConnection(host,"root","");
 			 		stat = conn.createStatement();
 			 		String data ;
 			 		String query = request.getParameter("cat");
 			 		
 			 			data = "select produit.*,categorie.libelle as cat  from produit,categorie where produit.id_cat = categorie.id";
 			 		//	out.println(query);
 			 	
 			 		res = stat.executeQuery(data);
 			 		while(res.next()){
 			 		%>
 			 		
                <div class="col-lg-3 col-sm-6 mix all <%= res.getString("cat") %> bags" style="margin-top:20px">
                     <form action="product.jsp" method="post">
                    <div class="single-product-item">
                        <figure>
                            <a href="#"><img src="img/<%= res.getString("image") %>" style="height:250px"alt=""></a>
                            <div class="p-status"><%= res.getString("libelle") %></div>
                            
                             <input type="hidden" name="ww" value="<%= res.getString("id") %>">
                        <input type="hidden" name="vvv" value="<% out.println(x); %>">
                        </figure>
                        <div class="product-text">
                            <h6><%= res.getString("description") %></h6>
                            <p><%= res.getString("prix") %> DH</p>
                        </div>
                        <div class="col">
                                    <button type="submit" style="width:100px; float:right;background-color:#cbc7c7;" class="btn btn-success btn-block">Acheter</button>
                                </div>
                    </div>
                     </form>
                </div>
               
                <%} %>
              
              
       
            </div>
        </div>
    </section>




    <!-- Latest Product Begin -->

    <!-- Latest Product End -->

    <!-- Lookbok Section Begin -->
    <section class="lookbok-section">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-4 offset-lg-1">
                    <div class="lookbok-left">
                        <div class="section-title">
                            <h2>2020 <br />#lookbook</h2>
                        </div>
                        <p>Fusce urna quam, euismod sit amet mollis quis, vestibulum quis velit. Vestibulum malesuada
                            aliquet libero viverra cursus. Aliquam erat volutpat. Morbi id dictum quam, ut commodo
                            lorem. In at nisi nec arcu porttitor aliquet vitae at dui. Sed sollicitudin nulla non leo
                            viverra scelerisque. Phasellus facilisis lobortis metus, sit amet viverra lectus finibus ac.
                            Aenean non felis dapibus, placerat libero auctor, ornare ante. Morbi quis ex eleifend,
                            sodales nulla vitae, scelerisque ante. Nunc id vulputate dui. Suspendisse consectetur rutrum
                            metus nec scelerisque. s</p>
                        <a href="#" class="primary-btn look-btn">See More</a>
                    </div>
                </div>
                <div class="col-lg-5 offset-lg-1">
                    <div class="lookbok-pic">
                        <img src="img/lookbok.jpg" alt="">
                        <div class="pic-text">fashion</div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
        <!-- Lookbok Section Begin -->

    <!-- Lookbok Section End -->

    <!-- Logo Section Begin -->
    <div class="logo-section spad">
        <div class="logo-items owl-carousel">
            <div class="logo-item">
                <img src="img/logos/logo-1.png" alt="">
            </div>
            <div class="logo-item">
                <img src="img/logos/logo-2.png" alt="">
            </div>
            <div class="logo-item">
                <img src="img/logos/logo-3.png" alt="">
            </div>
            <div class="logo-item">
                <img src="img/logos/logo-4.png" alt="">
            </div>
            <div class="logo-item">
                <img src="img/logos/logo-5.png" alt="">
            </div>
        </div>
    </div>
    <!-- Logo Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer-section spad">
        <div class="container">
            <div class="newslatter-form">
                <div class="row">
                    <div class="col-lg-12">
                        <form action="#">
                            <input type="text" placeholder="Your email address">
                            <button type="submit">Subscribe to our newsletter</button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="footer-widget">
                <div class="row">
                    <div class="col-lg-3 col-sm-6">
                        <div class="single-footer-widget">
                            <h4>About us</h4>
                            <ul>
                                <li>About Us</li>
                                <li>Community</li>
                                <li>Jobs</li>
                                <li>Shipping</li>
                                <li>Contact Us</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="single-footer-widget">
                            <h4>Customer Care</h4>
                            <ul>
                                <li>Search</li>
                                <li>Privacy Policy</li>
                                <li>2019 Lookbook</li>
                                <li>Shipping & Delivery</li>
                                <li>Gallery</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="single-footer-widget">
                            <h4>Our Services</h4>
                            <ul>
                                <li>Free Shipping</li>
                                <li>Free Returnes</li>
                                <li>Our Franchising</li>
                                <li>Terms and conditions</li>
                                <li>Privacy Policy</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="single-footer-widget">
                            <h4>Information</h4>
                            <ul>
                                <li>Payment methods</li>
                                <li>Times and shipping costs</li>
                                <li>Product Returns</li>
                                <li>Shipping methods</li>
                                <li>Conformity of the products</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="social-links-warp">
			<div class="container">
				<div class="social-links">
					<a href="" class="instagram"><i class="fa fa-instagram"></i><span>instagram</span></a>
					<a href="" class="pinterest"><i class="fa fa-pinterest"></i><span>pinterest</span></a>
					<a href="" class="facebook"><i class="fa fa-facebook"></i><span>facebook</span></a>
					<a href="" class="twitter"><i class="fa fa-twitter"></i><span>twitter</span></a>
					<a href="" class="youtube"><i class="fa fa-youtube"></i><span>youtube</span></a>
					<a href="" class="tumblr"><i class="fa fa-tumblr-square"></i><span>tumblr</span></a>
				</div>
			</div>

<div class="container text-center pt-5">
                <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart color-danger" aria-hidden="true"></i> by <a href="#" target="_blank">BOUTA REDA</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
            </div>


		</div>
    </footer>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/main.js"></script>
</body>

</html>