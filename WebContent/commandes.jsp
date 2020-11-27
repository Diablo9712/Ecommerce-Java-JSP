 <%@ include file="headers.jsp" %>
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
                             <th>Etat Commande</th>
                              <th>Actions</th>
                          </tr>
                          </thead>
                          <tbody>
                        <%  String host = "jdbc:mysql://localhost:3306/ecommerce";
 			 		Connection conn=null;
 			 		Statement stat = null;
 			 		ResultSet res = null;
 			 		Class.forName("com.mysql.jdbc.Driver");
 			 		conn = DriverManager.getConnection(host,"root","");
 			 		stat = conn.createStatement();
 			 		String data = "select commande.id as id, commande.date_commande as commande,concat(user.last_name,\" \",user.first_name) as name,commande.etat as etat from `commande`,`user` where commande.client_id= user.id";
 			 		res = stat.executeQuery(data);
 			 		while(res.next()){
 			 			
 			 		%>
 			 		
                      <tr>
				<td><%= res.getString("id") %></td>
 				<td><%= res.getString("name") %></td>			
				<td>	 <a href='detailcommandes.jsp?id=<%=res.getString("id") %>'                                        
                                      >
                                       <%= res.getString("commande") %>   
                                      </a></td>	
				<td><%= res.getString("etat") %></td>	
	
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