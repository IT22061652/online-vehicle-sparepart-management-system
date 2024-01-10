


<%@ page import="DBconnetion.DBconnection"%>
<%@ page import="jakarta.servlet.RequestDispatcher"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.PreparedStatement"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<!-- Boxicons -->
	<link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
	<!-- My CSS -->
	<link rel="stylesheet" href="adminstyle.css">
	
	<style type="text/css">
	
	.wrapper {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
	width: 120%;
	margin: 5% auto;
}
.product-area {
	width: 30%;
	margin-bottom: 30px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
	position: relative;
	overflow: hidden;
	background-color: #fff;
	border-radius: 25px;
}
.img-area {
	position: relative;
	width: 100%;
}
.img-area img {
	width: 100%;
	height: auto;
	display: block;
}
.product-overlay {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	opacity: 0
}
.product-overlay:hover {
	opacity: 0.9;
	background-color: rgba(0, 0, 0, 0.6);
	transition: opacity 0.5s ease;
}
.overlay {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	text-align: center;
}
.btn-1 {
	display: inline-block;
	padding: 10px 20px;
	background-color: #e74c3c;
	color: #fff;
	font-size: 14px;
	text-transform: uppercase;
	text-decoration: none;
}
.btn-2 {
	display: inline-block;
	padding: 10px 20px;
	background-color: #3498db;
	color: #fff;
	font-size: 14px;
	text-transform: uppercase;
	text-decoration: none;
}
.info-area {
	padding: 10px 20px;
	text-align: center;
	background: #000;
}
.info-area h3 {
	font-size: 15px;
	margin: 0;
	margin-bottom: 10px;
	color: #fff;
	font-family: 'Bebas Neue', sans-serif;
}
.rating {
	margin-bottom: 10px;
}
.rating span {
	color: #fff;
}
.checked {
	color: orange !important;
}
.product-price {
	font-size: 15px;
	color: #fff;
	font-weight: bold;
	margin-bottom: 10px;
}
@media (max-width: 768px) {
	.product-area {
		width: 48%;
	}
}
@media (max-width: 576px) {
	.product-area {
		width: 100%;
	}
}
	</style>

	<title>AdminHub</title>
</head>
<body>


	<!-- SIDEBAR -->
	<section id="sidebar">
		<a href="#" class="brand">
			<i class='bx bxs-smile'></i>
			<span class="text">AdminHub</span>
		</a>
		<ul class="side-menu top">
			<li class="active">
				<a href="#">
					<i class='bx bxs-dashboard' ></i>
					<span class="text">Dashboard</span>
				</a>
			</li>
			<li>
				<a href="#">
					<i class='bx bxs-shopping-bag-alt' ></i>
					<span class="text">Ads</span>
				</a>
			</li>
			<li>
				<a href="inventoryadmin.html">
					<i class='bx bxs-doughnut-chart' ></i>
					<span class="text">Our Stocks</span>
				</a>
			</li>
			<li>
				<a href="#">
					<i class='bx bxs-message-dots' ></i>
					<span class="text">Message</span>
				</a>
			</li>
			<li>
				<a href="admincustomers.html">
					<i class='bx bxs-group' ></i>
					<span class="text">Users</span>
				</a>
			</li>
		</ul>
		<ul class="side-menu">
			<li>
				<a href="#">
					<i class='bx bxs-cog' ></i>
					<span class="text">Settings</span>
				</a>
			</li>
			<li>
				<a href="#" class="logout">
					<i class='bx bxs-log-out-circle' ></i>
					<span class="text">Logout</span>
				</a>
			</li>
		</ul>
	</section>
	<!-- SIDEBAR -->



	<!-- CONTENT -->
	<section id="content">
		<!-- NAVBAR -->
		<nav>
			<i class='bx bx-menu' ></i>
			<a href="#" class="nav-link">Categories</a>
			<form action="#">
				<div class="form-input">
					<input type="search" placeholder="Search...">
					<button type="submit" class="search-btn"><i class='bx bx-search' ></i></button>
				</div>
			</form>
			<input type="checkbox" id="switch-mode" hidden>
			<label for="switch-mode" class="switch-mode"></label>
			<a href="#" class="notification">
				<i class='bx bxs-bell' ></i>
				<span class="num">8</span>
			</a>
			<a href="#" class="profile">
				<img src="img/people.png">
			</a>
		</nav>
		<!-- NAVBAR -->

		<!-- MAIN -->
		<main>
			<div class="head-title">
				<div class="left">
					<h1>Dashboard</h1>
					<ul class="breadcrumb">
						<li>
							<a href="#">Dashboard</a>
						</li>
						<li><i class='bx bx-chevron-right' ></i></li>
						<li>
							<a class="active" href="#">Home</a>
						</li>
					</ul>
				</div>
				
			</div>

			
<div class="wrapper">
					
			<%






try {

	DBconnection db = DBconnection.getInstance();
	   Connection	con = db.getCon();
	   PreparedStatement pst = con.prepareStatement("SELECT * FROM inventory");


	ResultSet rs = pst.executeQuery();
	while (rs.next()) {
		
		
		
		%>	
		
	
	
	
	
		<div class="product-area">

			<div class="img-area">
				<img alt="Product 1" src="images/<%=rs.getString("image")%>">
				<div class="product-overlay">
					<div class="overlay">
					<form action="<%= request.getContextPath() %>/updateinventory.jsp" method="post">
					<input type="hidden"  name="id" id="id" value="<%=rs.getInt("itemID") %>">
						<button type="submit" class="btn-1" >Update</button> </form>
            			<form action="<%= request.getContextPath() %>/admin.inventorydelete" method="post">
					<input type="hidden"  name="id" id="id" value=" <%=rs.getInt("itemID") %>">
						<button type="submit" class="btn-2" >Delete</button> </form>
					</div>
				</div>
			</div>

			<div class="info-area">
				<h3>Product name: <%=rs.getString("title")%></h3>
				<h3>Product ID: <%=rs.getInt("itemID") %></h3>
				<h3>Quantity: <%=rs.getString("quantity")%></h3>
				<h3>Category: <%=rs.getString("category")%></h3>
				<h3>Description: <%=rs.getString("description")%></h3>
				<h3>Post Date: <%=rs.getString("postdate")%></h3>
				<h3>Price: Rs. <%=rs.getString("price")%></h3>
				<div class="rating">
					<span class="fa fa-star checked"></span> 
					<span class="fa fa-star checked"></span> 
					<span class="fa fa-star checked"></span> 
					<span class="fa fa-star"></span> 
					<span class="fa fa-star"></span>					
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
		
		
		
		
	
						
				
		</main>
		<!-- MAIN -->
	</section>
	<!-- CONTENT -->
	

	<script src="script.js"></script>
</body>
</html>