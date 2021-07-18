<%-- 
    Document   : women
    Created on : Jul 12, 2021, 10:53:18 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                        <li><a href="">Collection</a></li>
                        <li><a href="">Lookbook</a></li>
                        <li><a href="library.html">Library</a></li>
                    </ul>
                </nav>
                <div class="logo">
                    <a href="index.jsp">
                        <img src="./img/icon/logos.jpg" alt="index.jsp" width="300px" />
                    </a>
                </div>
                <div class="login">
                    <a href="login.jsp"><button type="button" class="login">login</button></a>
                </div>
                <div class="cart">
                    <a href="cart.jsp">
                        <img src="./img/icon/cart.jpg" alt="cart.jsp" width="80px"/>
                    </a>
                </div>
            </div>
    </div>
    <!--body-->
    <div class="product">
        <h2>OUTERWEARS</h2>
        <div class="product-container">        
            <div class="row">

                <c:forEach items="${sessionScope.wo}" var="p">
                    <div class="col-4">
                        <img src=".\img\products\redtshirt.jpg">
                        <h4>${p.name}</h4>
                        <p>${p.price}</p>
                        <c:url value="/addtocart?id=${wo.ProducID}" var="addtocart"/>
                        <a href="${addtocart}">Add to cart</a>
                    </div>
                </c:forEach>


            </div>
        </div>
        <h2>PANTS</h2>
        <div class="product-container">        
            <div class="row">
                <c:forEach items="${sessionScope.wt}" var="p">
                    <div class="col-4">
                        <img src=".\img\products\redtshirt.jpg">
                        <h4>${p.name}</h4>
                        <p>${p.price}</p>
                        <c:url value="/addtocart?id=${wt.ProducID}" var="addtocart"/>
                        <a href="${addtocart}">Add to cart</a>
                    </div>
                </c:forEach>
            </div>
        </div>
        
        <h2>SKIRTS</h2>
        <div class="product-container">        
            <div class="row">
                <c:forEach items="${sessionScope.wb}" var="p">
                    <div class="col-4">
                        <img src=".\img\products\redtshirt.jpg">
                        <h4>${p.name}</h4>
                        <p>${p.price}</p>
                        <c:url value="/addtocart?id=${mb.ProducID}" var="addtocart"/>
                        <a href="${addtocart}">Add to cart</a>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>


    <!--footer-->
    <footer>
        <div class="footer-basic">
            <ul class="social">
                <li><a href="#"><img src="./img/icon/facebook.png" width="50"></a></li>
                <li><a href="#"><img src="./img/icon/instagram.png" width="50"></a></li>
                <li><a href="#"><img src="./img/icon/twitter.png" width="50"></a></li>
                <li><a href="#"><img src="./img/icon/gmail.png" width="50"></a></li>
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
</body>
</html>
