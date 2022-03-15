<%-- 
    Document   : article
    Created on : Jul 20, 2021, 2:26:21 PM
    Author     : SHOPET
--%>


<%@page import="Controller.InventoryController"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="Config.DbKoneksi"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    DbKoneksi dbcon = new DbKoneksi();
    Connection con = dbcon.open();
    InventoryController mc = new InventoryController();
    ResultSet rs = mc.get(con);
%>  
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="/views/layout/head.jsp">
            <jsp:param name="title" value="Products"></jsp:param>
        </jsp:include>
        
        <!-- Manggil style External -->
        <style type="text/css">
            <%@ include file="views/css/Style.css"%>
        </style>
    </head>
    <body>
        <jsp:include page="/views/layout/navbar.jsp"></jsp:include>
        
          <!-- All Products -->
           <div id="newProduct">
               <div class="container-fluid py-5">
                    <div class="container">
                         <div class="row">
                              <div class="col-12">
                                   <h3 class="mt-2">All Products</h3>  
                              </div>
                         </div>

                        <div class="row">
                             <% while(rs.next()){ %>
 
                            <div class="col-lg-3 col-md-4 col-sm-6 mt-4">
                                <div class="card h-100 zoom">                                    
                                    <img src="views/image/<% out.print(rs.getString("gambar")); %>" alt="..." />
                                    <!-- Product details-->
                                    <div class="card-body p-4">
                                        <div class="">
                                            <!-- Category -->
                                            <small class="fw-bolder" style="color: #c2adff"><% out.print(rs.getString("kategori")); %></small>
                                            <!-- Product name-->
                                            <h5 class="fw-bolder" style="color: #40407a"><% out.print(rs.getString("nama")); %></h5>
                                            <!-- Product price-->
                                            <h5 class="mt-2">Rp<% out.print(rs.getString("harga")); %></h5>
                                            <!-- Deskripsi-->
                                            <small class="fw-bolder mt-2" >Description: </small>
                                            <!-- Deskripsi Product-->
                                            <p class="" style="color: gray"><% out.print(rs.getString("deskripsi")); %></p>
                                        </div>
                                    </div>
                                    <!-- Product actions-->
                                    <div class="container">
                                        <div class="card-footer bg-transparent mb-3">
                                            <div  class="text-center">
                                                <form action="InsertTransaksi" method="POST">                                          
                                                    <input type="hidden" value="<% out.print(rs.getString("id")); %>" name="idbarang">
                                                    <input type="hidden" value="<% out.print(session.getAttribute("iduser")); %>" name="iduser">
                                                    <button type="submit" class="btn btn-outline-primary btn-sm" onclick="alert('Order Added To Cart')">Add to Cart</button>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <% } %>
                        </div>
                    </div>
               </div>
          </div>
          <!-- All Products -->
          
          <jsp:include page="/views/layout/footer.jsp"></jsp:include>
          <jsp:include page="/views/layout/script.jsp"></jsp:include>
          
    </body>
</html>
