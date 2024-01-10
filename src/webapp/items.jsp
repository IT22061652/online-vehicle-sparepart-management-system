

<%@ page import="DBconnetion.DBconnection"%>
<%@ page import="jakarta.servlet.RequestDispatcher"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.PreparedStatement"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <title>GearUp</title>
    <meta content="" name="description" />
    <meta content="" name="keywords" />

    <!-- Favicons -->
    <link href="img/favicon.png" rel="icon" />
    <link href="img/apple-touch-icon.png" rel="apple-touch-icon" />

    <!-- Vendor CSS Linkks -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

    <!-- Vendor Script Linkks -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;0,900;1,300;1,400;1,500&display=swap"
      rel="stylesheet" />

    <!-- Main CSS Files -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="homecss/style.css" rel="stylesheet" />
    
    <style type="text/css">
	
	.wrapper {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
	width: 90%;
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
    
  </head>

  <body>

 <input type="hidden"  id="status" value="<%= session.getAttribute("id")%>">

    <!-- ======= Header ======= -->
    <header id="header" class="fixed-top d-flex align-items-center">
      <div class="container d-flex align-items-center justify-content-between">
        <div class="logo">
          <h1 id="logo">
            <a href="index.html"><span style="color: black; font-family: 'Roboto', sans-serif">Gear</span><span
                style="color: #3498db">Up</span></a>
          </h1>
           
          <p>Revving your vehicle solutions</p>
          <!-- Uncomment below if you prefer to use an image logo -->
          <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
        </div>

        <nav id="navbar" class="navbar">
          <ul>
            <li><a class="nav-link scrollto" href="index.jsp">Home</a></li>
            <li>
              <a class="nav-link scrollto" href="forms/about.jsp">About</a>
            </li>
            <li>
              <a class="nav-link scrollto" href="forms/services.jsp">Services</a>
            </li>
            <li>
              <a class="nav-link scrollto" href="forms/contact.jsp">Contact</a>
            </li>
            
            <li>
              <form action="<%= request.getContextPath() %>/Cart.jsp" method="post">
            			<input type="hidden"  name="cusid" id="status" value="<%= session.getAttribute("cusID")%>">
						<button type="submit" class="getstarted scrollto" style="brder-style=none;" > cart</button> </form>
            </li>
            
            <li><a class="getstarted scrollto" href="useracc.jsp">Account</a></li>
          </ul>
        </nav>
        <!-- .navbar -->
      </div>
    </header>
    <!-- End Header -->

   
   
   <div class="wrapper" style="margin-top:140px;">
					
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
					<form action="<%= request.getContextPath() %>/payout.jsp" method="post">
					<input type="hidden"  name="id" id="id" value="<%=rs.getInt("itemID") %>">
					<input type="hidden"  name="price" id="id" value="<%=rs.getString("price")%>">
				<lable style="color:white;">Quantity:</lable>	<input type="hidden"  name="title" id="id" value=" <%=rs.getString("title")%>">
					<input type="text"  name="qa" id="id" >
						<button type="submit" class="btn-1" >Buy now</button> </form>
            			<form enctype="multipart/form-data" action="<%= request.getContextPath() %>/addtocart1" method="post">
            			<input type="hidden"  name="cusid" id="status" value="<%= session.getAttribute("cusID")%>">
            			<input type="hidden"  name="price" id="status" value="<%=rs.getString("price")%>">
					<input type="hidden"  name="id" id="id" value=" <%=rs.getInt("itemID") %>">
					<input type="hidden"  name="image" id="id" value=" <%=rs.getString("image")%>">
					<input type="hidden"  name="title" id="id" value=" <%=rs.getString("title")%>">
						<button type="submit" class="btn-2" >Add to cart</button> </form>
					</div>
				</div>
			</div>

			<div class="info-area">
				<h3>Product name: <%=rs.getString("title")%></h3>
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
   
   
   
   
   
   
   

    <!-- ======= Footer ======= -->
    <footer id="footer">
      <div class="container">
        <div class="row d-flex align-items-center">
          <div class="col-lg-6 text-lg-left text-center">
            <div class="copyright">
              &copy; Copyright
              <strong>
                <h1>
                  <a href="index.html"><span style="color: black; font-family: 'Roboto', sans-serif">Gear</span><span
                      style="color: #3498db">Up</span></a>
                </h1>
              </strong>
              <p style="
                  color: black;
                  font-family: 'Roboto', sans-serif;
                  margin-top: -1.2%;
                ">
                Revving your vehicle solutions
              </p>
              All Rights Reserved
            </div>
            <div class="credits">Designed by <a href="">S2/MLB/WD/G28</a></div>
          </div>
          <div class="col-lg-6">
            <nav class="footer-links text-lg-right text-center pt-2 pt-lg-0">
              <a href="#intro" class="scrollto">Home</a>
              <a href="#about" class="scrollto">About</a>
              <a href="#">Privacy Policy</a>
              <a href="#">Terms of Use</a>
            </nav>
          </div>
        </div>
      </div>
    </footer>
    <!-- End Footer -->

    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
        class="bi bi-arrow-up-short"></i></a>

    <!-- Vendor JS Files -->
    <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
    <script src="assets/vendor/aos/aos.js"></script>
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
    <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
    <script src="assets/vendor/php-email-form/validate.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script type="text/javascript">
	
	var status= document.getElementById("status").value;
		if(status=="done"){
			swal({
				  title: "Good job!",
				  text: "Your account has been successfully created",
				  icon: "success",
				  button: "ok",
				});
	
		}
	
	
	
	
	
	</script>
    <!-- Template Main JS File -->
    <script src="assets/js/main.js"></script>
  </body>

  </html>