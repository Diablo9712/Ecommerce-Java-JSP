<%@ include file="header.jsp" %>
     <!-- Main row -->
        <div class="container">
        <div class="row">
      
        
        		 <div class="col-md-8">
            <!-- general form elements -->
  
            <!--/.col (left) -->




          <div class="col-lg-12">
              <div class="card">

     
                  <div class="card-header">
                      <h3 class="card-title">Liste des Avis
                      </h3>
                   
                  </div>
                  <!-- /.card-header -->
                  <div class="card-body">
                      <table class="table table-bordered table table-striped">
                          <thead class="thead-dark">
                          <tr>
                          <th>#</th>
                                                     <th>Produit</th>
                                                      <th>Image</th>
                                                     <th>Avis</th>
                                                     <th>Commentaire</th>
                       
                            
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
 			 		String data = "select avis.id,produit.libelle,avis.avis,avis.commentaire,produit.image from produit,avis WHERE avis.id_produit= produit.id ";
 			 		res = stat.executeQuery(data);
 			 		while(res.next()){
 			 		%>
 			 		
                      <tr>
				<td><%= res.getString("id") %></td>
 				<td><%= res.getString("libelle") %></td>
 <td><img style='height:50px;width:100px; border-radius:10%;' src="img/<%= res.getString("image") %>"/></td>
 		<td><% String x = res.getString("avis");
			
		int f = Integer.parseInt(x);
		for(int i=1;i<=f;i++){
			
		
		%> <i class="fa fa-star" style="color:yellow"></i><%}%></td>	
		<td><%= res.getString("commentaire") %></td>	
			<td>
		



                                     <a href="deleteavis.jsp?d=<%=res.getString("id") %>"
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