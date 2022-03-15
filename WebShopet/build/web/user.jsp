<%-- 
    Document   : article
    Created on : Jul 20, 2021, 2:26:21 PM
    Author     : SHOPET
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Controller.MainController"%>
<%@page import="Model.ModelInventory"%>
<%@page import="Controller.InventoryController"%>
<%@page import="java.sql.Connection"%>
<%@page import="Config.DbKoneksi"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    DbKoneksi dbkon = new DbKoneksi();
    Connection con = dbkon.open();
    
    InventoryController ic = new InventoryController();
    String iduser = request.getParameter("iduser");
    
    ModelInventory model = new ModelInventory();
    model.setIduser(iduser);
    
    MainController mc = new MainController();
    ResultSet rs= null;
    
    if(iduser.isEmpty()){
        response.sendRedirect("");
        out.println("Error");
    }else{
        rs = ic.editakun(con, model);
    }
    
%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="/views/layout/head.jsp">
            <jsp:param name="title" value="System Logout"></jsp:param>
        </jsp:include>
        
        <!-- Manggil style External -->
        <style type="text/css">
            <%@ include file="views/css/stylecheckout.css"%>
        </style>
    </head>
    <body>
        <jsp:include page="/views/layout/navbar.jsp"></jsp:include>
        
        <div class="card mt-50 mb-50">
            <div class="card-title mx-auto mb-4"> Your Profile </div>
            
            <form action="useredit" method="POST">
                <% while(rs.next()){ %>
                    <span id="card-header">ID Customer</span>
                    <div class="row row-1">
                        <input type="text" name="iduser" value="<% out.print(rs.getString("iduser")); %>" disabled>
                    </div>

                    <span id="card-header">Username</span>
                    <div class="row row-1">
                        <input  name="username" type="text" value="<% out.print(rs.getString("username")); %>" required>
                    </div>

                    <span id="card-header">Password</span>   
                    <div class="row row-1">
                         <input  name="password" type="text" value="<% out.print(rs.getString("password")); %>" required>
                    </div>
                    
                    <span id="card-header">E-mail</span>   
                    <div class="row row-1">
                         <input  name="email" type="text" value="<% out.print(rs.getString("email")); %>" required>
                    </div>
                    
                    <div class="mt-3">
                        <input type="submit" name="submit" value="SAVE" class="btn btn-primary">
                    </div>
                    <div class=" text-center">
                        <a class="btn btn-danger" href="Logout">LOGOUT</a>
                    </div>
                <% } %>    
            </form>
        </div>
                    
        <!-- footer -->
        <jsp:include page="/views/layout/footer.jsp"></jsp:include>
        <!-- footer -->
        
        <!-- script -->
            <jsp:include page="/views/layout/script.jsp"></jsp:include>
        <!-- script -->
    </body>
</html>
