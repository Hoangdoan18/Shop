 
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="./style/style.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <title>Dr</title>
        <script>
            function check() {
                alert("Please login first!");
            }
        </script>
    </head>
    <div class="header">
        <body>
            <div class="navbar">    
                <nav>
                    <ul>
                        <li><a href="">Men</a></li>  
                        <li><a href="">Women</a></li>
                        <li><a href="">Collection</a></li>
                        <li><a href="">Lookbook</a></li>
                        <li><a href="library.html">Library</a></li>
                    </ul>
                </nav>
                <div class="logo">
                    <a href="index.html">
                        <img src="./img/index/logos.jpg" alt="index.html" width="300px" />
                    </a>
                </div>
                <div class="login">
                    <% if (session.getAttribute("user1") == null) { %>
                    <a href="login.jsp">Login</a>
                    <% } else {%>
                    <a href="LogoutServlet">Log_out</a>
                    <% } %>
                </div>
                <div class="cart">
                    <a 
                        <% if (session.getAttribute("user1") == null) { %> 
                        onclick="check()" 
                        <% } else { %>
                        href="cart.jsp" 
                        <% }%>
                        >    
                        <img src="./img/index/cart.jpg" alt="cart.html" width="50px"/>
                    </a>
                </div>
            </div>
    </div>

    <div class="container1">  
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="item active">
                    <img src="./img/index/los angeles.jpg" alt="Los Angeles" style="width:100%; height: 800px">
                </div>

                <div class="item">
                    <img src="./img/index/chicago.jpg" alt="Chicago" style="width:100%; height: 800px">
                </div>

                <div class="item">
                    <img src="./img/index/new york.jpg" alt="New york" style="width:100%; height: 800px;">
                </div>
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
    <div class="paragraph">
        <p>Be brilliant, Be bold, Be you.</p>
    </div>


    <!-----Anh collection------>
    <div class="categories">
        <div class="row">
            <div class="col-3">
                <img src="./img/index/collection1.jpg">
            </div>
            <div class="col-3">
                <img src="./img/index/collection2.jpg">
            </div>
            <div class="col-3">
                <img src="./img/index/collection3.jpg">
            </div>
            <div class="col-3">
                <img src="./img/index/collection4.jpg">
            </div>
        </div>
    </div>



    <footer>
        <div class="footer-basic">
            <ul class="social">
                <li><a href="#"><img src="./img/index/facebook.png" width="50"></a></li>
                <li><a href="#"><img src="./img/index/instagram.png" width="50"></a></li>
                <li><a href="#"><img src="./img/index/twitter.png" width="50"></a></li>
                <li><a href="#"><img src="./img/index/gmail.png" width="50"></a></li>
            </ul>
            <div class="social"><a href="#"><i class="icon ion-social-instagram"></i></a><a href="#"><i class="icon ion-social-snapchat"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-facebook"></i></a></div>
            <ul class="list-inline">
                <li class="list-inline-item"><a href="#">Home</a></li>
                <li class="list-inline-item"><a href="#">Services</a></li>
                <li class="list-inline-item"><a href="#">About</a></li>
                <li class="list-inline-item"><a href="#">Terms</a></li>
                <li class="list-inline-item"><a href="#">Privacy Policy</a></li>
            </ul>
            <p class="copyright">Company Name ? 2018</p>
    </footer>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>   
</body>
</html>


