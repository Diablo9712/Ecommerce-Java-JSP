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
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>
<form method="post" action="#" onchange="submit();">
<%
String x="" ;
String vvvvv="";
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
                    <a href="#">
                        <img src="img/icons/bag.png" alt="">
                        <span>2</span>
                    </a>
                </div>
                <div class="user-access">
                    <a href="#"> <%  out.println(sesssion);%></a>
                    <a href="logout.jsp" class="in">Logout</a>
                </div>
                     <nav class="main-menu mobile-menu">
                    <ul>
                        <li><a class="active" href="./index.jsp">Home</a></li>
                        <li><a href="product_page.jsp">Shop</a>
                          
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
   
    <br><br>
        <!-- Lookbok Section Begin -->
    <section class="lookbok-section">
        <div class="container-fluid">
        <div class="container">
        <div class="row">
      
        
        		 <div class="col-md-8">
            <!-- general form elements -->
        


          <div class="col-lg-12">
              <div class="card">

           
                  <div class="card-header">
                      <h3 class="card-title">Liste des Commandes
                      </h3>
                   
                  </div>
                  <!-- /.card-header -->
                  <div class="card-body">
                      <table class="table table-bordered table table-striped">
                          <thead class="thead-dark">
                          <tr>
                          <th>#</th>
                              <th>Client</th>
                         <th>Date Commande</th>
                             <th>Produit</th>
                              <th>Prix Unitaire</th>
                              <th>Quantité</th>

                              <th>Prix Total</th>
                          </tr>
                          </thead>
                          <tbody>
                        <%  String host = "jdbc:mysql://localhost:3306/ecommerce";
 			 		Connection conn=null;
 			 		Statement stat = null;
 			 		ResultSet res = null;
 			 		String u = request. getParameter("id");
 					int num = Integer.parseInt(u);
 			 		Class.forName("com.mysql.jdbc.Driver");
 			 		conn = DriverManager.getConnection(host,"root","");
 			 		stat = conn.createStatement();
 			 		String data = "SELECT commande.id as id,detail_commande.id as idd,concat(user.last_name,\" \",user.first_name) as name,commande.date_commande,produit.libelle,produit.prix,detail_commande.qte, detail_commande.qte * produit.prix as price FROM `detail_commande`,`commande`,`user`,`produit` where commande.id=detail_commande.id_commande and detail_commande.id_produit=produit.id and user.id=commande.client_id and commande.id =  "+num;
 			 		res = stat.executeQuery(data);
 			 		while(res.next()){
 			 			
 			 		%>
 			 		
                      <tr>
				<td><%= res.getString("id") %></td>
 				<td><%= res.getString("name") %></td>			
			<td><%= res.getString("date_commande") %></td>	
				
				<td><%= res.getString("libelle") %></td>	
				<td><%= res.getString("prix") %> DH</td>
				<td><%= res.getString("qte") %></td>	
				<td><%= res.getString("price") %> DH</td>			
			<td>
	



                                     <a href="deletecommandeproduittest.jsp?d=<%=res.getString("idd") %>&id=<%=res.getString("id") %>"
                                        class="btn btn-sm btn-danger"
                                        onclick="return confirm('Confirmation de suppression')"
                                     >
                                         <span class="fa fa-trash"></span>
                                     </a>
			</td>
			</tr>
				<%
 			 		
 			 		}
 			 		%>
                          </tbody>
                      </table>
               </div>
    </section>
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