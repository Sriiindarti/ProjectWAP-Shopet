<%-- 
    Document   : navbar
    Created on : Jul 18, 2021, 9:37:08 AM
    Author     : Indri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Navbar -->
          <nav class="navbar navbar-expand-lg navbar-dark" id="navbar">
               <div class="container">
                    <!--  Brand atau Logo toko Kita  -->
                    <a class="navbar-brand" href="main.jsp">
                         <img src="views/image/SHOPET.png" alt="LOGOSHOPET">
                    </a>

                    <!--  Biar saat dikecilin akan keluar tabbar ketika ukuran layar kurang-toggle="collapse dari 690px -->
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                         <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="collapsibleNavbar">
                         <ul class="navbar-nav ml-auto text-center align-items-center">
                              <li class="nav-item">
                                   <a class="nav-link" href="index.jsp">Products</a>
                              </li>
                              <li class="nav-item">
                                   <a class="nav-link" href="article.jsp">Articles</a>
                              </li>
                              <li class="nav-item">
                                  <a class="nav-link" href="cart?iduser=<% out.print(session.getAttribute("iduser"));%>">
                                      <img src="views/image/Cart.png" style="width: 32px;" alt="CART">
                                  </a>
                              </li>
                              <li class="nav-item">
                                   <a class="nav-link" href="useredit?iduser=<%out.print(session.getAttribute("iduser"));%>">
                                        <img src="views/image/user.png" style="width: 32px;" alt="">
                                   </a>
                              </li>

                         </ul>
                    </div>  
               </div>
          </nav>
          <!-- Navbar -->