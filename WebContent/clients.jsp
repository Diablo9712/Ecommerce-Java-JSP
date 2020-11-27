 <%@ include file="headers.jsp" %>
        <div class="content">
        <div class="row">
      
        
        		 <div class="col-md-8">
            <!-- general form elements -->

            <!--/.col (left) -->




        <div class="col-lg-12">
    <div class="card">

  	<div class="container text-left"><br>
								 <button type="button" class="btn btn-success" data-toggle="modal"style="float:right" data-target="#myModal">
    Add New Clients
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
                    <th width="10%">Nom</th>
                    <th width="8%">Prenom</th>
                    <th width="8%">CIN</th>
                    <th width="10%">Ville</th>
                    <th width="20%">ADRESSE</th>
                    <th width="10%">TELEPHONE</th>
                    <th width="20%">Email</th>
             
                  
                  
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
                    <h3 class="card-title">Ajouter Client</h3>
                </div>
                <!-- /.card-header -->
                <!-- form start -->
                <div class="card-body">





                  <form role="form" action="processaddclients.jsp"  method="post">

                    <div class="card-body">
                    <div class="form-group">
                        <label >Nom </label>
                        <input type="text" name="nom" id="nom" class="form-control">
                      </div>
                      
   <div class="form-group">
                        <label >Prenom </label>
                        <input type="text" name="prenom" id="prenom" class="form-control">
                      </div>
                         <div class="form-group">
                        <label >CIN </label>
                        <input type="text" name="cin" id="cin" class="form-control">
                      </div>
                      
                         <div class="form-group">
                        <label >Ville </label>
                       
                        <select name="ville" id="ville" class="form-control">
                               <%  String hosttw = "jdbc:mysql://localhost:3306/ecommerce";
 			 		Connection connnw=null;
 			 		Statement stattw = null;
 			 		ResultSet restw = null;
 			 		Class.forName("com.mysql.jdbc.Driver");
 			 		connnw = DriverManager.getConnection(hosttw,"root","");
 			 		stattw = connnw.createStatement();
 			 		String datatw = "select * from `ville`";
 			 		restw = stattw.executeQuery(datatw);
 			 		while(restw.next()){
 			 		%>
 			 		
 			 		<option value="<%=restw.getString("id") %>"><%=restw.getString("libelle") %></option>
                       <%
 			 		}
 			 		%>
                        </select>
                      </div>
                      
                         <div class="form-group">
                        <label >Adresse </label>
                        <input type="text" name="adr" id="adr" class="form-control">
                      </div>
                      
                         <div class="form-group">
                        <label >Téléphone </label>
                        <input type="text" name="tel" id="tel" class="form-control">
                      </div>
                         <div class="form-group">
                        <label >Email </label>
                        <input type="text" name="mail" id="mail" class="form-control">
                      </div>
                      
                         <div class="form-group">
                        <label >Password </label>
                        <input type="password" name="pass" id="pass" class="form-control">
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