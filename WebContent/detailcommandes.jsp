 <%@ include file="header.jsp" %>
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
	
			</tr>
				<%
 			 		
 			 		}
 			 		%>
                          </tbody>
                      </table>
                  </div>

              </div>
          </div>
      
        
        
        
     
      
      
      
      <!-- /.container-fluid -->
    <!-- /.content -->
  </div>
  </div>
  </div>
 </div>
        <!-- /.row (main row) -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
 <%@ include file="footer.jsp" %>

 