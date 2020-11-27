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
    
     
      <link rel="stylesheet" href="assets/css/flaticon.css">
     
      <link rel="stylesheet" href="assets/css/style.css">
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
                    <a href="cart.jsp">
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


      <section class="cart_area section_padding">
        <div class="container">
        <h2>Facture <span style="float:right"> Votre Commadne est livré en   <%= (int) (Math.random() * 7) %> jours</span></h2>
        
          <div class="cart_inner">
            <div class="table-responsive">
              <table class="table">
                <thead>
                  <tr>
                    <th scope="col">Product</th>
                    <th scope="col">Price</th>
                    <th scope="col">Quantity</th>
                    <th scope="col">Total</th>
                  </tr>
                </thead>
                <tbody>
                              <% 
                  
                
                        
                        
                        
                        
                        String hosttt = "jdbc:mysql://localhost:3306/ecommerce";
 			 		Connection conntt=null;
 			 		Statement stattt = null;
 			 		ResultSet restt = null;
 			 		String u =x;
 			 		float ss = 0;
 					int num = Integer.parseInt(x);
 			 		Class.forName("com.mysql.jdbc.Driver");
 			 		conntt = DriverManager.getConnection(hosttt,"root","");
 			 		stattt = conntt.createStatement();
 			 		String datatt = "SELECT commande.id as id,detail_commande.id as idd,concat(user.last_name,\" \",user.first_name) as name,commande.date_commande,produit.libelle,produit.prix,detail_commande.qte, detail_commande.qte * produit.prix as price FROM `detail_commande`,`commande`,`user`,`produit` where commande.id=detail_commande.id_commande and detail_commande.id_produit=produit.id and user.id=commande.client_id and commande.id  =  "+num;
 			 		restt = stattt.executeQuery(datatt);
 			 		while(restt.next()){
 			 			
 			 			ss = ss + Float.valueOf(restt.getString("price")); 
 			 		%>
                  <tr>
                    <td>
                      <div class="media">
                       
                        <div class="media-body">
                          <p><%= restt.getString("libelle") %></p>
                        </div>
                      </div>
                    </td>
                    <td>
                      <h5><%= restt.getString("prix") %> DH</h5>
                    </td>
                    <td>
                      <div class="product_count">
                        <input class="input-number" type="text" value="<%= restt.getString("qte") %>" min="0" max="10" disabled>
                       
                      </div>
                    </td>
                    <td>
                      <h5><%= restt.getString("price") %> DH</h5>
                    </td>
                    			<td style="width:5%;height:3%">
	



                                     <a href="deletecommandeproduitparclient.jsp?d=<%=restt.getString("idd") %>&id=<%=restt.getString("id") %>"
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
 			 			 		                <tr>
						
			
				
				<td></td>	
				<td></td>
				<td>Total : </td>	
				<td><% out.println(ss); %> DH</td>			
		<td>
		
            <a href="confirmer.jsp?d=<% out.println(x); %>"
                                        class="btn btn-sm btn-success"
                                        style="background-color:green"
                                       
                                     >
                                         <span class="fa fa-check"></span>
                                          <input type="hidden" id="sfl" value="<%=ss%>">
                                     </a>
                
		</td>
			</tr>
                </tbody>
              </table>
              <div class="checkout_btn_inner float-right">
              
              			<div id="paypal-button-container" style="width:250px;float:right"></div>
<script src="https://www.paypal.com/sdk/js?client-id=sb&currency=USD" data-sdk-integration-source="button-factory"></script>
<script>
var sfl=document.getElementById("sfl").value; 
  paypal.Buttons({
      style: {
          shape: 'pill',
          color: 'blue',
          layout: 'vertical',
          label: 'paypal',
          
      },
      createOrder: function(data, actions) {
          return actions.order.create({
              purchase_units: [{
                  amount: {
                      value: sfl/10
                  }
              }]
          });
      },
      onApprove: function(data, actions) {
          return actions.order.capture().then(function(details) {
              alert('Transaction completed by ' + details.payer.name.given_name + ' !');
          });
      }
  }).render('#paypal-button-container');
</script>
             
              </div>
            </div>
          </div>
      </section>



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