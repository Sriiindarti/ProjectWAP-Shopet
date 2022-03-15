<%-- 
    Document   : article
    Created on : Jul 20, 2021, 2:26:21 PM
    Author     : SHOPET
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP Page</title>
        <jsp:include page="/views/layout/head.jsp">
            <jsp:param name="title" value="Register Page"></jsp:param>
        </jsp:include>
          
          <!-- Manggil style External -->
          <style type="text/css">
              <%@ include file="views/css/styleloginregis.css"%>
          </style>
    </head>
    <body>
        <div class="container">
          <h1>Register</h1>
            <form method="post" action="SignUp">
                <label>Username</label><br>
                
                <input type="text" name="username"><br>
               
                <label>Password</label><br>
                
                <input type="password" name="password"><br>
                
                <label>Email</label><br>
                
                <input type="text" name="email"><br>
                
                <button>Register</button>
                <p> Have an account?<a href="signin.jsp"> Login</a></p>
            </form>
        </div>
        <!-- script -->
            <jsp:include page="/views/layout/script.jsp"></jsp:include>
        <!-- script -->
    </body>
</html>
