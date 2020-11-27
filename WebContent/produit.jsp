 <%@ include file="header.jsp" %>
        <div class="content">
        <div class="row">
      
        
        		 <div class="col-md-8">
            <!-- general form elements -->
         




        <div class="col-lg-12">
    <div class="card">
	<div class="container text-left"><br>
								 <button type="button" class="btn btn-success" data-toggle="modal"style="float:right" data-target="#myModal">
    Add New Produits
  </button>
					</div>
 
        <div class="card-header">
            <h3 class="card-title">Liste des Categories
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
                   
                   
             
                  
                    <th width="20%">Actions</th>
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
  
       
  <td>
<a href='editproduit.jsp?id=<%= res.getString("id") %>' 
                               class="btn btn-sm btn-primary"
                            >
                                <span class="fa fa-pencil-alt"></span>
                            </a>



                           <a href="deleteproduit.jsp?d=<%= res.getString("id") %>"
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
                    <h3 class="card-title">Ajouter Produit</h3>
                </div>
                <!-- /.card-header -->
                <!-- form start -->
                <div class="card-body">





                  <form role="form" action="processaddproduit.jsp"  method="post">

                    <div class="card-body">
                    <div class="form-group">
                        <label >libelle </label>
                        <input type="text" name="libelle" id="libelle" class="form-control">
                      </div>
                      
   <div class="form-group">
                        <label >Description </label>
                       <textarea id="description" name="description" rows="4" cols="50" class="form-control">

</textarea>
                      </div>
                         <div class="form-group">
                        <label >Prix </label>
                        <input type="text" name="prix" id="prix" class="form-control">
                      </div>
                      
                       <div class="form-group">
                        <label >Quantité </label>
                        <input type="text" name="qte" id="qte" class="form-control">
                      </div>
                      
                         <div class="form-group">
                        <label >Categorie </label>
                       
                        <select name="cat" id="cat" class="form-control">
                               <%  String hostt = "jdbc:mysql://localhost:3306/ecommerce";
 			 		Connection connn=null;
 			 		Statement statt = null;
 			 		ResultSet rest = null;
 			 		Class.forName("com.mysql.jdbc.Driver");
 			 		connn = DriverManager.getConnection(hostt,"root","");
 			 		statt = connn.createStatement();
 			 		String datat = "select * from `categorie`";
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
                        <label >Image </label>
<input type="file" name="image" id="image" required="required" class="form-control" ><br>                  
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