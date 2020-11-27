 <%@ include file="header.jsp" %>
        <div class="container">
        <div class="row">
      
        
        		 <div class="col-md-8">
            <!-- general form elements -->
          


          <div class="col-lg-12">
              <div class="card">

           	<div class="container text-left"><br>
								 <button type="button" class="btn btn-success" data-toggle="modal"style="float:right" data-target="#myModal">
    Add New Reclamation
  </button>
					</div>
                  <div class="card-header">
                      <h3 class="card-title">Liste des Reclamations
                      </h3>
                   
                  </div>
                  <!-- /.card-header -->
                  <div class="card-body">
                      <table class="table table-bordered table table-striped">
                          <thead class="thead-dark">
                          <tr>
                          <th>#</th>
                                                        <th>Produit</th>
                          
                              <th>Texte Reclamation</th>
                       
                            
                              <th>Actions</th>
                          </tr>
                          </thead>
                          <tbody>
                        <%  String host = "jdbc:mysql://localhost:3306/ecommerce";
                        String sesgsionf ;

                   	 sesgsionf = (String) session.getAttribute("idd");
                   //	 out.println(sesgsionf);
 			 		Connection conn=null;
 			 		Statement stat = null;
 			 		ResultSet res = null;
 			 		Class.forName("com.mysql.jdbc.Driver");
 			 		conn = DriverManager.getConnection(host,"root","");
 			 		stat = conn.createStatement();
 			 		String data = "select reclamation.*,produit.libelle from `reclamation`,`produit` where reclamation.id_produit = produit.id  ";
 			 		res = stat.executeQuery(data);
 			 		while(res.next()){
 			 		%>
 			 		
                      <tr>
				<td><%= res.getString("id") %></td>
				<td><%= res.getString("libelle") %></td>
 				<td><%= res.getString("text") %></td>			
		
			<td>
	



                                     <a href="deletereclamation.jsp?d=<%=res.getString("id") %>"
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
				



            <!--/.col (left) -->			
	           




  <div class="card card-primary">
                <div class="card-header">
                    <h3 class="card-title">Ajouter Reclamation</h3>
                </div>
                <!-- /.card-header -->
                <!-- form start -->
                <div class="card-body">





                  <form role="form" action="processaddreclamation.jsp"  method="post">

                    <div class="card-body">
                             <div class="form-group">
                        <label >Produit </label>
                       
                        <select name="produit" id="produit" class="form-control">
                               <%  String hostt = "jdbc:mysql://localhost:3306/ecommerce";
 			 		Connection connn=null;
 			 		Statement statt = null;
 			 		ResultSet rest = null;
 			 		Class.forName("com.mysql.jdbc.Driver");
 			 		connn = DriverManager.getConnection(hostt,"root","");
 			 		statt = connn.createStatement();
 			 		String datat = "select * from `produit`";
 			 		rest = statt.executeQuery(datat);
 			 		while(rest.next()){
 			 		%>
 			 		
 			 		<option value="<%=rest.getString("id") %>"><%=rest.getString("libelle") %></option>
                       <%
 			 		}
 			 		%>
                        </select>
                      </div>
                    <div class="form-group">
                        <label >Texte Reclamation </label>
                     
                        <textarea rows="5" cols="45" class="form-control" name="nm"></textarea>
                      </div>
                      



                    </div>
  <button type="submit" class="btn btn-success" style="float:right" id="save_data">Ajouter</button>

                  </form>





                </div>
                <!-- /.box -->
            </div>
            <!--/.col (left) -->


		
							
		






        </div>
        
       
        
      </div>
    </div>
  </div>
  
</div>
  <!-- /.content-wrapper -->
  <%@ include file="footer.jsp" %>