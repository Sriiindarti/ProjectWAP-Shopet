<%-- 
    Document   : article
    Created on : Jul 20, 2021, 2:26:21 PM
    Author     : SHOPET
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="/views/layout/head.jsp">
            <jsp:param name="title" value="Login Page"></jsp:param>
        </jsp:include>
          
          <!-- Manggil style External -->
          <style type="text/css">
              <%@ include file="views/css/styleloginregis.css"%>
          </style>
    </head>
    <body>
        <div class="container">
          <h1>Login</h1>
            <form method="post" action="Login"> 
                <label>Username</label><br>
                <input type="text" name="username" ><br>
                
                <label>Password</label><br>
                <input type="password" name="password"><br>
                
                <button type="submit">Log in</button>
                
                <p> Don't have an account? <a href="signup.jsp"> Registration</a></p>
                
               
            </form>
        </div>
        <!-- script -->
            <jsp:include page="/views/layout/script.jsp"></jsp:include>
        <!-- script -->
    </body>
</html>
