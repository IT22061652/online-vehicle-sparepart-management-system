<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.min.css" rel="stylesheet">
</head>
<body>


<div style=	"display: flex; flex-wrap: wrap;">
      		
				
			<div class="text-center mx-auto">
			   <div class="text-center p-5" style="margin-left:30px;">
				   	<div class="text-center shadow-lg p-5" style="width:400px;border-radius:30px;">
				   	
					   
			               
			            <h1>Add Stocks</h1>
			              
			              <form enctype="multipart/form-data" action="<%= request.getContextPath() %>/Addinventory1" method="post">
			               	   
				               
				               <label class="text-left">Title:</label>
				               <input class="form-control" type="text" name="title" value=""><br>
				               
				               
				               
				               <label class="text-left">Category:</label>
				               <input class="form-control" type="text" name="category" value=" "><br>
				               
				               <label class="text-left">Description:</label>
				               <textarea class="form-control" type="text" name="desc" value=""></textarea><br>
				              
				               
				               
				               <label class="text-left">Quantity:</label>
				               <input class="form-control" type="text" name="quantity" value=""><br>
				               
				               <label class="text-left">Price:</label>
				               <input class="form-control" type="text" name="price" value=""><br>
				               
				                <label class="text-left">Image:</label>
				               <input class="form-control" type="file" name="image" value=""><br>
				               
				               
				               <button style="border-style:none;border-radius:30px;" class="bt btn-success p-3">ADD</button>
				               
			               </form>
			               

				   	</div>
		               
				</div>
				</div>	
				
			
	           </div>









</body>
</html>