<%-- 
    Document   : article
    Created on : Jul 20, 2021, 2:26:21 PM
    Author     : SHOPET
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="/views/layout/head.jsp">
            <jsp:param name="title" value="About Us"></jsp:param>
        </jsp:include>
        
        <!-- Manggil style External -->
        <style type="text/css">
            <%@ include file="views/css/Style.css"%>
        </style>
    </head>
    <body>
        <jsp:include page="/views/layout/navbar.jsp"></jsp:include>

          <!--  About  -->
          <div class="container-fluid py-5 mt-3"" id="aboout">
               <div class="container">

                    <div class="row align-items-center">
                         <div class="col-md-6 col-sm-12 mt-3 col-md-5">
                              <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1982.6370892037162!2d106.791035!3d-6.358547!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xfc78c361c0c18bf7!2sToko%20Pakan%20Ternak%20Dan%20Accessoris%20%22babeh%22!5e0!3m2!1sen!2sid!4v1625082378190!5m2!1sen!2sid" width="520" height="400" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                         </div>
                         <div class="col-md-6 col-md-5 col-sm-12">
                              <p class="mt-3">The development of technological advances is one of the main reasons for us to make www.shopet.com as our 
                              only official website in serving every customer online. In service, we always try to be able to serve your needs 
                              in meeting all kinds of needs that you need for your pets. We are also always ready to provide maximum information
                              and always provide the best products in each class with a wide selection of variants.</p>
                              
                              <p>Jl. Krukut Raya, Krukut, Kec. Limo,</p>
                              <p>Kota Depok, Jawa Barat, Indonesia 16514</p>
                              <p>Phone : (+62) 895 1666 7968</p>
                              <p>Email : shopetanjayabadi@gmail.com</p>
                         </div>
                    </div>
               </div>
          </div>
          <!--  About  -->

         <jsp:include page="/views/layout/footer.jsp"></jsp:include>
         <jsp:include page="/views/layout/script.jsp"></jsp:include>
    </body>
</html>
