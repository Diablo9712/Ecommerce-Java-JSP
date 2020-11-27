 <%@ include file="header.jsp" %>
        <div class="content">
        <div class="row">
      
        
        		 <div class="col-md-8">
            <!-- general form elements -->
            <div class="card card-primary">
                <div class="card-header">
                    <h3 class="card-title">Update Client</h3>
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

                  <form role="form" action="processupdateclient.jsp"  method="post">
<%
		statt = contn.createStatement();
		String u = request. getParameter("id");
		int num = Integer.parseInt(u);
		String datat = "select * from user where id ="+num;
		rest = statt.executeQuery(datat);
		while(rest.next()){
%>
                    <div class="card-body">
                    <div class="form-group">
                    <input type="hidden" class="form-control" name="id "  value='<%=rest.getString("id")%>' />
                   <input type="hidden" name="vs" class="form-control" value='<%=rest.getString("id")%>'>

                        <label >Nom </label>
                        <input type="text" name="nom" id="nom" class="form-control" value='<%=rest.getString("last_name")%>'>
                      </div>
                      
   <div class="form-group">
                        <label >Prenom </label>
                        <input type="text" name="prenom" id="prenom" class="form-control" value='<%=rest.getString("first_name")%>'>
                      </div>
                         <div class="form-group">
                        <label >CIN </label>
                        <input type="text" name="cin" id="cin" class="form-control" value='<%=rest.getString("cin")%>'>
                      </div>
                      
                         <div class="form-group">
                        <label >Ville </label>
                       
                        <select name="ville" id="ville" class="form-control">
                               <%  String hosttt = "jdbc:mysql://localhost:3306/ecommerce";
 			 		Connection conntn=null;
 			 		Statement stattt = null;
 			 		ResultSet restt = null;
 			 		Class.forName("com.mysql.jdbc.Driver");
 			 		conntn = DriverManager.getConnection(hostt,"root","");
 			 		stattt = conntn.createStatement();
 			 		String datatt = "select * from `ville`";
 			 		restt = stattt.executeQuery(datatt);
 			 		while(restt.next()){
 			 		%>
 			 		
 			 		<option value="<%=restt.getString("id") %>"><%=restt.getString("libelle") %></option>
                       <%
 			 		}
 			 		%>
                        </select>
                      </div>
                      
                         <div class="form-group">
                        <label >Adresse </label>
                        <input type="text" name="adr" id="adr" class="form-control" value='<%=rest.getString("adresse")%>'>
                      </div>
                      
                         <div class="form-group">
                        <label >Téléphone </label>
                        <input type="text" name="tel" id="tel" class="form-control" value='<%=rest.getString("tel")%>'>
                      </div>
                         <div class="form-group">
                        <label >Email </label>
                        <input type="text" name="mail" id="mail" class="form-control" value='<%=rest.getString("email")%>'>
                      </div>
                      
                         <div class="form-group">
                        <label >Password </label>
                        <input type="text" name="pass" id="pass" class="form-control" value='<%=rest.getString("password")%>'>
                      </div>


                    </div>
<%} %>
  <button type="submit" class="btn btn-success" style="float:right" id="save_data">Update</button>

                  </form>





                </div>
                <!-- /.box -->
            </div>
            <!--/.col (left) -->




        <div class="col-lg-12">
    <div class="card">

 
        <div class="card-header">
            <h3 class="card-title">Liste des Categories
            </h3>
         
        </div>
        <!-- /.card-header -->
        <div class="card-body">
            <table class="table table-bordered table table-striped">
                <thead class="thead-dark">
                <tr>
                <th>#</th>
                    <th>Nom</th>
                    <th>Prenom</th>
                    <th>CIN</th>
                    <th>Ville</th>
                    <th>ADRESSE</th>
                    <th>TELEPHONE</th>
                    <th>Email</th>
             
                  
                   
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
 			 		String data = "select user.*,ville.libelle from `user`,`ville` where user.id_ville = ville.id and user.permission = 'client'";
 			 		res = stat.executeQuery(data);
 			 		while(res.next()){
 			 		%>
                  <tr>
      <td><%= res.getString("id") %></td>
        <td><%= res.getString("last_name") %></td>
         <td><%= res.getString("first_name") %></td>
          <td><%= res.getString("cin") %></td>
           <td><%= res.getString("libelle") %></td>
    <td><%= res.getString("adresse") %></td>
        <td><%= res.getString("tel") %></td>
         <td><%= res.getString("email") %></td>
       
  
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