<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckOut.aspx.cs" Inherits="Kitchen_project5.CheckOut" %>

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Checkout_CSS.css"/>
        <script src="https://kit.fontawesome.com/a8b56cb52b.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>

</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg" style="background-color: #E6E6E6;">
            <div class="container-fluid">
                <a class="navtext" class="navbar-brand " href="#" style="font-family: 'Ink Free'; font-size: 28px">Shine</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent1" aria-controls="navbarSupportedContent1" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent1">
                    <ul id="navUl" class="navbar-nav me-auto mb-2 mb-lg-0">
                         <li class="nav-item">
                            <a class="navtext" class="nav-link active" aria-current="page" href="#">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="navtext" class="nav-link active" aria-current="page" href="#">About Us</a>
                        </li>
                        <li class="nav-item">
                            <a class="navtext" class="nav-link active" aria-current="page" href="#">Contact Us</a>
                        </li>
                        <li class="nav-item">
                            <a class="navtext" class="nav-link active" aria-current="page" href="#">Register</a>
                        </li>
                          <li class="nav-item">
                            <a class="navtext" class="nav-link active" aria-current="page" href="#">Sign In</a>
                        </li>
                        <li class="nav-item">
                            <a class="navtext" class="nav-link active" aria-current="page" href="#"><i class="fa-sharp fa-solid fa-cart-shopping"></i></a>
                        </li>
                    </ul>

                </div>
            </div>
        </nav>
        <div>
            <div class="checkproduct">

            </div>
            <div class="summery" runat="server">
                <asp:Label ID="summ" runat="server" Text="Summery" CssClass="tit"></asp:Label>
                <br />
               
                <div class="purchase">
                    <asp:Label ID="sub" runat="server" Text="Subtotal"></asp:Label>
                    <hr />
                    <asp:Label ID="dis" runat="server" Text="Discount"></asp:Label>                    
                    <hr />
                    <asp:Label ID="del" runat="server" Text="Delivery"></asp:Label>                    
                    <hr />
                    <asp:Label ID="tot" runat="server" Text="Total"></asp:Label>                    
                    <hr />

                </div>     
                 <div class="pri">
                    <asp:Label ID="subtotal" runat="server" Text="300 JD"></asp:Label>
                    <hr />
                    <asp:Label ID="discount" runat="server" Text="0 %"></asp:Label>                    
                     <hr />
                    <asp:Label ID="delivery" runat="server" Text="7 JD"></asp:Label>                    
                     <hr />
                    <asp:Label ID="total" runat="server" Text="307 JD"></asp:Label>                    
                     <hr />
                </div>
                <br /><br />
                <asp:Button ID="checkout" runat="server" Text="Check Out" CssClass="check_button"  />
              <br/>
                 <div class="tabb">
                                 <h3>Billing Address</h3>

                     <table class="tabb">
                         <tr><th></th> <th></th></tr>
                         <tr>
                             <td> <label for="fname" class="foon"><i class="fa fa-user"></i> Full Name</label></td>
                             <td></td>
                              <td> <input type="text" id="fname" name="firstname" placeholder="John M. Doe"></td>
                           </tr>
                         <tr>
                              <td> <label for="email" class="foon"><i class="fa fa-envelope"></i> Email</label></td>
                                                          <td></td>

                             <td> <input type="text" id="email" name="email" placeholder="john@example.com">
                         </tr>
                         <tr>
                            <td><label for="adr" class="foon"><i class="fa fa-address-card-o"></i> Address</label></td>
                                                         <td></td>

                             <td><input type="text" id="adr" name="address" placeholder="542 W. 15th Street"></td>
                         </tr>
                          <tr>
                              <td><label for="city" class="foon"><i class="fa fa-institution"></i> City</label></td>
                            <%-- <td>             <input type="text" id="email" name="email" placeholder="john@example.com">
</td>
                             <td><input type="text" id="adr" name="address" placeholder="542 W. 15th Street"></td>--%>
                             <td></td>

                             <td><input type="text" id="city" name="city" placeholder="New York"></td>

                         </tr>
<%--            <h3>Billing Address</h3>--%>
           <%-- <label for="fname"><i class="fa fa-user"></i> Full Name</label>
            <input type="text" id="fname" name="firstname" placeholder="John M. Doe"> <br />
            <label for="email"><i class="fa fa-envelope"></i> Email</label>
            <input type="text" id="email" name="email" placeholder="john@example.com"><br />
            <label for="adr"><i class="fa fa-address-card-o"></i> Address</label>
            <input type="text" id="adr" name="address" placeholder="542 W. 15th Street"><br />
            <label for="city"><i class="fa fa-institution"></i> City</label>
            <input type="text" id="city" name="city" placeholder="New York"><br />--%>
                         </table>
</div>

            </div>
        </div>
      <br />
        <%--<div class="foott">
          <footer class="footer-distributed">
 
			<div class="footer-left">
 
				<h3>HoMeE<span style="color:#EB455F">Home</span></h3>
 
				<p class="footer-links">
                    .
					<a href="#">Home</a>
					.
					<a href="#">About</a>
					.
					<a href="#">Contact</a>
					.
					<a href="#">About</a>
				    .
					<a href="#">Sign In</a>
					
					
				</p>
 
				<p class="footer-company-name"></p>
			</div>
 
			<div class="footer-center">
 
				<div>
					<i class="fa fa-map-marker" style="background-color:#92999f"></i>
					<p><span> Street</span> Irbid, Jordan</p>
				</div>
 
				<div>
					<i class="fa fa-phone" style="background-color:#92999f"></i>
					<p>0786302281</p>
				</div>
 
				<div>
					<i class="fa fa-envelope" style="background-color:#92999f"></i>
					<p><a href="mailto:support@company.com" style="color:#EB455F">contact@webdevtrick.com</a></p>
				</div>
 
			</div>
 
			<div class="footer-right">
 
				<p class="footer-company-about">
					<span>About the company</span>
					Our store is your kitchen and everything you need to create the most delicious meals .... 
				</p>
 
				<div class="footer-icons">
 
					<a href="#"><i class="fa fa-facebook"></i></a>
					<a href="#"><i class="fa fa-twitter"></i></a>
					<a href="#"><i class="fa fa-linkedin"></i></a>
					<a href="#"><i class="fa fa-github"></i></a>
 
				</div>
 
			</div>
 
		</footer></div>--%>
    </form>
</body>
</html>
