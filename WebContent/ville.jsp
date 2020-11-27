 <%@ include file="header.jsp" %>
     <!-- Main row -->
        <div class="container">
        <div class="row">
      
        
        		 <div class="col-md-8">
            <!-- general form elements -->
 
            <!--/.col (left) -->




          <div class="col-lg-12">
              <div class="card">

           	<div class="container text-left"><br>
								 <button type="button" class="btn btn-success" data-toggle="modal"style="float:right" data-target="#myModal">
    Add New Ville
  </button>
					</div>
                  <div class="card-header">
                      <h3 class="card-title">Liste des Villes
                      </h3>
                   
                  </div>
                  <!-- /.card-header -->
                  <div class="card-body">
                      <table class="table table-bordered table table-striped">
                          <thead class="thead-dark">
                          <tr>
                          <th>#</th>
                              <th>Libelle</th>
                       
                            
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
 			 		String data = "select * from `ville`";
 			 		res = stat.executeQuery(data);
 			 		while(res.next()){
 			 		%>
 			 		
                      <tr>
				<td><%= res.getString("id") %></td>
 				<td><%= res.getString("libelle") %></td>			
		
			<td>
		 <a href='editville.jsp?id=<%=res.getString("id") %>' 
                                         class="btn btn-sm btn-primary"
                                      >
                                          <span class="fa fa-pencil-alt"></span>
                                      </a>



                                     <a href="deleteville.jsp?d=<%=res.getString("id") %>"
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
  
  
  
  
  
  
  
    <div class="container">
  <!-- Button to Open the Modal -->
 

  <!-- The Modal -->
  <div class="modal" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
				
						
			           <div class="card card-primary">
                <div class="card-header">
                    <h3 class="card-title">Ajouter Ville</h3>
                </div>
                <!-- /.card-header -->
                <!-- form start -->
                <div class="card-body">





                  <form role="form" action="proccessaddville.jsp"  method="post">

                    <div class="card-body">
                    <div class="form-group">
                        <label >Libelle </label>
                        <input type="text" name="nm" id="nm" class="form-control">
                      </div>
                      



                    </div>
  <button type="submit" class="btn btn-success" style="float:right" id="save_data">Ajouter</button>

                  </form>





                </div>
                <!-- /.box -->
            </div>			
							
		






        </div>
        
       
        
      </div>
    </div>
  </div>
  
</div>
  <!-- /.content-wrapper -->
  <%@ include file="footer.jsp" %>