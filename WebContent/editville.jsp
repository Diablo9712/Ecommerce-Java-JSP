 <%@ include file="header.jsp" %>
       
        
        
        <!-- Main row -->
        <div class="container">
        <div class="row">
        
        		 <div class="col-md-8">
            <!-- general form elements -->
            <div class="card card-primary">
                <div class="card-header">
                    <h3 class="card-title">Update Ville</h3>
                </div>
                <!-- /.card-header -->
                <!-- form start -->
                <div class="card-body">


<%
String hostt = "jdbc:mysql://localhost:3306/ecommerce";
	    Connection contn=null;
		Statement statt = null;
		ResultSet rest = null;
		PreparedStatement stmtt = null;
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		contn = DriverManager.getConnection(hostt,"root","");
%>




                  <form role="form" action="processupdateville.jsp"  method="post">
<%
		statt = contn.createStatement();
		String u = request. getParameter("id");
		int num = Integer.parseInt(u);
		String datat = "select * from ville where id ="+num;
		rest = statt.executeQuery(datat);
		while(rest.next()){
%>
<input type="hidden" class="form-control" name="id "  value='<%=rest.getString("id")%>' />
                    <div class="card-body">
                    <div class="form-group">
                        <label >Libelle </label>
                        <input type="text" name="nm" class="form-control" value='<%=rest.getString("libelle")%>'>
                      </div>
                      
 <input type="hidden" name="vs" class="form-control" value='<%=rest.getString("id")%>'>


                    </div>
                    	<%
		}
			%>
                    <button type="submit" class="btn btn-success" style="float:right">update</button>

                  </form>





                </div>
                <!-- /.box -->
            </div>
            <!--/.col (left) -->




          <div class="col-lg-12">
              <div class="card">

           
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