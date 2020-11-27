 <%@ include file="header.jsp" %>
        <div class="content">
        <div class="row">
      
        
        		 <div class="col-md-8">
            <!-- general form elements -->
            <div class="card card-primary">
                <div class="card-header">
                    <h3 class="card-title">Ajouter Produit</h3>
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



                  <form role="form" action="processupdateproduit.jsp"  method="post">
<%
		statt = contn.createStatement();
		String u = request. getParameter("id");
		int num = Integer.parseInt(u);
		String datat = "select * from produit where id ="+num;
		rest = statt.executeQuery(datat);
		while(rest.next()){
%>
                    <div class="card-body">
                    <div class="form-group">
                       <input type="hidden" class="form-control" name="id "  value='<%=rest.getString("id")%>' />
                   <input type="hidden" name="vs" class="form-control" value='<%=rest.getString("id")%>'>
                        <label >libelle </label>
                        <input type="text" name="libelle" id="libelle" class="form-control" value='<%=rest.getString("libelle")%>'>
                      </div>
                      
   <div class="form-group">
                        <label >Description </label>
                       <textarea id="description" name="description" rows="4" cols="50" class="form-control" value='<%=rest.getString("description")%>'>
<%=rest.getString("description")%>
</textarea>
                      </div>
                         <div class="form-group">
                        <label >Prix </label>
                        <input type="text" name="prix" id="prix" class="form-control" value='<%=rest.getString("prix")%>'>
                      </div>
                      
                       <div class="form-group">
                        <label >Quantité </label>
                        <input type="text" name="qte" id="qte" class="form-control" value='<%=rest.getString("qte")%>'>
                      </div>
                      
                         <div class="form-group">
                        <label >Categorie </label>
                       
                        <select name="cat" id="cat" class="form-control">
                               <%  String hosttt = "jdbc:mysql://localhost:3306/ecommerce";
 			 		Connection contnn=null;
 			 		Statement stattt = null;
 			 		ResultSet restt = null;
 			 		Class.forName("com.mysql.jdbc.Driver");
 			 		contnn = DriverManager.getConnection(hosttt,"root","");
 			 		stattt = contnn.createStatement();
 			 		String datatt = "select * from `categorie`";
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
                        <label >Image </label>
<input type="file" name="image" id="image" required="required" class="form-control" ><br>                  
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
            <h3 class="card-title">Liste des Produits
            </h3>
         
        </div>
        <!-- /.card-header -->
        <div class="card-body">
            <table class="table table-bordered table table-striped">
                <thead class="thead-dark">
                <tr>
                <th width="5%">#</th>
                    <th width="10%">Libelle</th>
                    <th width="25%">Descriptive</th>
                    <th width="8%">Prix</th>
                    <th width="10%">Quantité</th>
                     <th width="10%">Categorie</th>
                    <th width="20%">Image</th>
                   
                   
             
                  
                 
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
 			 		String data = "SELECT produit.id as id, produit.libelle as libelle, produit.description as description, produit.prix as price, produit.qte as qte, produit.image as image, categorie.libelle as lib from produit,categorie where produit.id_cat = categorie.id";
 			 		res = stat.executeQuery(data);
 			 		while(res.next()){
 			 		%>
                  <tr>
      <td><%= res.getString("id") %></td>
        <td><%= res.getString("libelle") %></td>
         <td><%= res.getString("description") %></td>
          <td><%= res.getString("price") %> DH</td>
           <td><%= res.getString("qte") %></td>
    <td><%= res.getString("lib") %></td>
        <td><img style='height:100px;width:100px; border-radius:10%;' src="img/<%= res.getString("image") %>"/></td>
  
       

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