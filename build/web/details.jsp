<%-- 
    Document   : details
    Created on : Jul 12, 2021, 9:49:51 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

  <html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title>All Produts</title>
</head>
<!-- header -->
<div class="header">
  <body>
      <div class="navbar">    
        <nav>
          <ul>
            <li><a href="men.jsp">Men</a></li>  
            <li><a href="women.jsp">Women</a></li>
            <li><a href="#">Collection</a></li>
            <li><a href="#">Lookbook</a></li>
            <li><a href="library.html">Library</a></li>
          </ul>
        </nav>
       <div class="logo">
         <a href="index.html">
          <img src=".img/icon/logos.jpg" alt="index.html" width="300px" />
        </a>
      </div>
      <div class="login">
      <a href="login.html"><button type="button" class="login">login</button></a>
    </div>
    <div class="cart">
      <a href="cart.html">
          <img src=".img/icon/cart.jpg" alt="cart.html" width="80px"/>
      </a>
    </div>
  </div>
   </div>
  
            <!--title-->
            
        
     <div class="small-container single-product">
         <div class="row">
             <div class="col-2">
                 <img src=".img/products/redtshirt.jpg" width="500px" id="product-img">
                 <div class="col-2">
                    <p>Home/T-shirt</p>
                    <h1>Red T-shirt</h1>
                    <h4>$50.00
                        <select >
                            <option >Select size</option>
                            <option >Large</option>
                            <option >Medium</option>
                            <option >Small</option>
                        </select>
                        <input type="number" value="1"/>
                        <a href="cart.jsp" class="btn"> Add To Cart</a>
                        <h3>Product Details</h3>
                        <p>Have you got a favourite T-shirt? What does it look like? Did you choose it or did someone give it to you?<br> Is it old or new? Tell us about your favourite T-shirt.
   
                       </p>
                    </h4>
                </div>
                 <!----cac goc cua anh----->
                
             </div>
             
         </div>
     </div>
    </div>
    <div class="small-container">
        <div class="row row-2">
            <h2>Related Products</h2>
            <p> View more</p>
        </div>
    </div>
    <div class="small-container">
        <div class="row">
         
    <div class="row">
        <div class="col-4">
            <img src=".img/products/redtshirt.jpg">
            <h4> Red Printed T-shirt</h4>
            <p>$50.00</p>
            <img src=".img/products/edtshirt.jpg">
            <h4> Red Printed T-shirt</h4>
            <p>$50.00</p>
            <img src=".img/products/redtshirt.jpg">
            <h4> Red Printed T-shirt</h4>
            <p>$50.00</p>
            <img src=".img/products/redtshirt.jpg">
            <h4> Red Printed T-shirt</h4>
            <p>$50.00</p>
            
        </div>
    </div>
</div>
   
   <footer>
    <div class="footer-basic">
      <ul class="social">
      <li><a href="#"><img src=".img/icon/facebook.png" width="50"></a></li>
      <li><a href="#"><img src=".img/icon/instagram.png" width="50"></a></li>
      <li><a href="#"><img src=".img/icon/twitter.png" width="50"></a></li>
      <li><a href="#"><img src=".img/icon/gmail.png" width="50"></a></li>
    </ul>
          <div class="social"><a href="#"><i class="icon ion-social-instagram"></i></a><a href="#"><i class="icon ion-social-snapchat"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-facebook"></i></a></div>
          <ul class="list-inline">
              <li class="list-inline-item"><a href="#">Home</a></li>
              <li class="list-inline-item"><a href="#">Services</a></li>
              <li class="list-inline-item"><a href="#">About</a></li>
              <li class="list-inline-item"><a href="#">Terms</a></li>
              <li class="list-inline-item"><a href="#">Privacy Policy</a></li>
          </ul>
          <p class="copyright">Company Name © 2018</p>
      </footer>
  </div>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>   
  <script>
      var Productimg = document.getElementById("product-img");
      var Smallimg = document.getElementsByClassName("small-img");
      Smallimg[0].onclick = function(){
          Productimg.src = Smallimg[0].src;
      }
      Smallimg[1].onclick = function(){
          Productimg.src = Smallimg[1].src;
      }
      Smallimg[2].onclick = function(){
          Productimg.src = Smallimg[2].src;
      }
      Smallimg[3].onclick = function(){
          Productimg.src = Smallimg[3].src;
      }
  </script>
    </body>
  </html>
  
