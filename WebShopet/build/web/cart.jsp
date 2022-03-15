<%-- 
    Document   : article
    Created on : Jul 20, 2021, 2:26:21 PM
    Author     : SHOPET
--%>

<%@page import="Controller.MainController"%>
<%@page import="Model.ModelInventory"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Controller.InventoryController"%>
<%@page import="java.sql.Connection"%>
<%@page import="Config.DbKoneksi"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    DbKoneksi dbcon = new DbKoneksi();
    Connection con = dbcon.open();
    
    InventoryController ic = new InventoryController();
    String iduser = request.getParameter("iduser");
    
    ModelInventory model = new ModelInventory();
    model.setIduser(iduser);
    
    MainController mc = new MainController();
    ResultSet rs = null;
    
    if(iduser.isEmpty()){
        response.sendRedirect("");
        out.println("Error");
    }else{
        rs = ic.show(con, model);
    }

%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="/views/layout/head.jsp">
            <jsp:param name="title" value="Cart"></jsp:param>
        </jsp:include>
        
        <!-- Manggil style External -->
        <style type="text/css">
            <%@ include file="views/css/Style.css"%>
        </style>
    </head>
    <body>
        <jsp:include page="/views/layout/navbar.jsp"></jsp:include>
         
            <div class="py-2 mt-5 mb-5">
                <div class="container kartu">
                    <div class="row">

                        <table class="table">
                            <tr>
                                <th> </th>
                                <th>Product Name</th>
                                <th>Category</th>
                                <th>Unit Price</th>
                                <th>Remove</th>
                            </tr>
                            <% while(rs.next()){ %>

                            <tr>
                                <td class="tumbnail-img">
                                    <img class="img" src="views/image/<% out.print(rs.getString("gambar")); %>" width="180" alt="..." />
                                </td>
                                <td><p><% out.print(rs.getString("nama")); %></p></td>
                                <td><p><% out.print(rs.getString("kategori")); %></p></td>
                                <td><p>Rp<% out.print(rs.getString("harga")); %></p></td>
                                <td>
                                    <form class="form-inline" method="post" action="Delete">
                                        <input type="hidden" value="<%out.print(rs.getString("idbarang"));%>" name="idbarang"/>
                                        <button onclick="return confirm('Are You Sure')"type="submit" class="btn btn-sm btn-danger ml-1 align-items-center">
                                            Delete
                                        </button>
                                    </form>
                                </td>
                            </tr>
                           <% } %>
                        </table>
                        <div>
                            <a class="btn btn-success" style="width: 100px" href="checkout.jsp" role="button" onclick="alert('Thank You, Please Pay Your Order')">Pay</a>
                        </div>
                    </div>
                </div>
            </div>
            
        <jsp:include page="/views/layout/footer.jsp"></jsp:include>
        <jsp:include page="/views/layout/script.jsp"></jsp:include>
    </body>
</html>
