

<%@ page import="DBconnetion.DBconnection"%>
<%@ page import="jakarta.servlet.RequestDispatcher"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.min.css" rel="stylesheet">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
		
	<div style=	"display: flex; flex-wrap: wrap;">
      		<%
      		
      		String id=request.getParameter("id");
      		
			try {

				DBconnection db = DBconnection.getInstance();
				Connection	con = db.getCon();
				PreparedStatement pst = con.prepareStatement("SELECT * FROM inventory WHERE itemID='"+id+"'");
				
			
				ResultSet rs = pst.executeQuery();
				
				while (rs.next()) {
			%>		
				
			<div class="text-center mx-auto">
			   <div class="text-center p-5" style="margin-left:30px;">
				   	<div class="text-center shadow-lg p-5" style="width:400px;border-radius:30px;">
				   	
					   
			               
			            <img src="images/<%=rs.getString("image")%>" style="width:150px;height:150px"><br><br>
			              
			               <form action="<%= request.getContextPath() %>/updateinvenory" method="post">
			               	   <label class="text-left">Product Id:</label>
				               <input class="form-control" type="text" name="id" value="<%=rs.getInt("itemID") %>"><br>
				               
				               <label class="text-left">Title:</label>
				               <input class="form-control" type="text" name="title" value="<%=rs.getString("title")%>"><br>
				               
				               
				               
				               <label class="text-left">Category:</label>
				               <input class="form-control" type="text" name="category" value=" <%=rs.getString("category")%>"><br>
				               
				               <label class="text-left">Description:</label>
				               <input class="form-control" type="text" name="description" value="<%=rs.getString("description")%>"><br>
				              
				               
				               
				               <label class="text-left">Quantity:</label>
				               <input class="form-control" type="text" name="qty" value="<%=rs.getString("quantity")%>"><br>
				               
				               <label class="text-left">Price:</label>
				               <input class="form-control" type="text" name="price" value=" <%=rs.getString("price")%>"><br>
				               
				               
				               
				               <button style="border-style:none;border-radius:30px;" class="bt btn-success p-3">Update</button>
				               
			               </form>
			               

				   	</div>
		               
				</div>
				</div>	
				
			  <%	
	
		  			}
	
					
					} catch (Exception e) {
					
						e.printStackTrace();
					}
	           %>
	           </div>

</body>
</html>