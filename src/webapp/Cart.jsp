


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
    
    
    *{

	
	margin: 0;

	padding: 0;

	box-sizing: border-box;

}

.container{

	max-width: 1200px;

	margin: 100 0 100 0;
	padding:50 60 50 60;

}

.container > h1{

	padding: 20px 0;

}

.cart{

	display: flex;

}

.products{

	flex: 0.75;

}

.product{

	display: flex;

	width: 100%;

	height: 200px;

	overflow: hidden;

	border: 1px solid silver;

	margin-bottom: 20px;

}

.product:hover{

	border: none;

	box-shadow: 2px 2px 4px rgba(0,0,0,0.2);

	transform: scale(1.01);

}

.product > img{

	width: 300px;

	height: 200px;

	object-fit: cover;

}

.product > img:hover{

	transform: scale(1.04);

}

.product-info{

	padding: 20px;

	width: 100%;

	position: relative;

}

.product-name, .product-price, .product-offer{

	margin-bottom: 20px;

}

.product-remove{

	position: absolute;

	bottom: 20px;

	right: 20px;

	padding: 10px 25px;

	background-color: green;

	color: white;

	cursor: pointer;

	border-radius: 5px;

}

.product-remove:hover{

	background-color: white;

	color: green;

	font-weight: 600;

	border: 1px solid green;

}

.product-quantity > input{

	width: 40px;

	padding: 5px;

	text-align: center;

}

.fa{

	margin-right: 5px;

}

.cart-total{

	flex: 0.25;

	margin-left: 20px;

	padding: 20px;

	height: 240px;

	border: 1px solid silver;

	border-radius: 5px;

}

.cart-total p{

	display: flex;

	justify-content: space-between;

	margin-bottom: 30px;

	font-size: 20px;

}

.cart-total a{

	display: block;

	text-align: center;

	height: 40px;

	line-height: 40px;

	background-color: tomato;

	color: white;

	text-decoration: none;

}

.cart-total a:hover{

	background-color: red;

}

@media screen and (max-width: 700px){

	.remove{

		display: none;

	}

	.product{

		height: 150px;

	}

	.product > img{

		height: 150px;

		width: 200px;

	}

	.product-name, .product-price, .product-offer{

		margin-bottom: 10px;

	}

}

@media screen and (max-width: 900px){

	.cart{

		flex-direction: column;

	}

	.cart-total{

		margin-left: 0;

		margin-bottom: 20px;

	}

}

@media screen and (max-width: 1220px){

	.container{

		max-width: 95%;

	}

}
    
    
    
    
    
    
    
    
    
    
    </style>
    
    
    
  </head>

  <body>
 <input type="hidden"  id="status" value="<%= request.getAttribute("status")%>">

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
              <a class="nav-link scrollto" href="login.jsp">Sign in</a>
            </li>
            <li>
              <a class="nav-link scrollto" href="register.jsp">Sign up</a>
            </li>
            <li><a class="getstarted scrollto" href="">Get Started</a></li>
          </ul>
        </nav>
        <!-- .navbar -->
      </div>
    </header>
    <!-- End Header -->

    
   
   <div class="container" style="margin-top:100px;margin-bottom:100px;">

	<h1>Shopping Cart</h1>
	
	
			<%


			String id= request.getParameter("cusid");
			 double tot=0;		


try {
	
	 session.getAttribute("cusID");
	 
	DBconnection db = DBconnection.getInstance();
	   Connection	con = db.getCon();
	   PreparedStatement pst = con.prepareStatement("SELECT * FROM cart where CusID='"+id+"'");


	ResultSet rs = pst.executeQuery();
	while (rs.next()) {
		
		String p=rs.getString("price");
		double price = Double.parseDouble(p);
		tot=tot+price;
		
		%>	
		

	<div class="cart" >

		<div class="products">

			<div class="product">

				<img src="images/">

				<div class="product-info">

					<h3 class="product-name"><%=rs.getString("title")%></h3>

					<h4 class="product-price">Rs:<%=rs.getString("price")%></h4>

					

					<p class="product-quantity">Qnt: <input value="1" name="">

				<form action="<%= request.getContextPath() %>/deletefromcart1" method="post"><p class="product-remove">

						<i class="fa fa-trash" aria-hidden="true"></i>

						
					<input type="hidden"  name="id" id="id" value="<%=rs.getInt("cartID") %>">
						<button type="submit" "product-remove" >Remove</button> 
					</p>
					</form>

				</div>

			</div>

			

		</div>
		</div>
		
		
		
		
												<%		

	}

} catch (Exception e) {

	e.printStackTrace();
}


   
    
    
%>

		<div class="cart-total">

			<p>

				<span>Total Price</span>

				<span><%= tot %></span>

			</p>

			

			<a href="payout.jsp">Proceed to Checkout</a>

		</div>

	</div>

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
		if(status=="done2"){
			swal({
				  title: "!!",
				  text: "Your account has been successfully deleted",
				  icon: "success",
				  button: "ok",
				});
	
		}
	
	
	
	
	
	</script>
    <!-- Template Main JS File -->
    <script src="assets/js/main.js"></script>
  </body>

  </html>
</body>
</html>