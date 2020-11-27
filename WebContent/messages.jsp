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
                      <h3 class="card-title">Liste des Messages 
                      </h3>
                   
                  </div>
                  <!-- /.card-header -->
                  <div class="card-body">
                      <table class="table table-bordered table table-striped">
                          <thead class="thead-dark">
                          <tr>
                          <th>#</th>
                              <th>Fullname</th>
                              <th>Subject</th>
                              <th>Message</th>
                       
                            
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
 			 		String data = "select * from `message`";
 			 		res = stat.executeQuery(data);
 			 		while(res.next()){
 			 		%>
 			 		
                      <tr>
				<td><%= res.getString("id") %></td>
 				<td><%= res.getString("first_name") %> <%= res.getString("last_name") %></td>	
 				<td><%= res.getString("subject") %> </td>			
		 				<td><%= res.getString("message") %> </td>			
		
			<td>
		 



                                     <a href="deletemsg.jsp?d=<%=res.getString("id") %>"
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