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
            <jsp:param name="title" value="Home Page"></jsp:param>
        </jsp:include>
          
        <!-- Manggil style External -->
        <style type="text/css">
            <%@ include file="views/css/Style.css"%>
        </style>
     </head>
     
     <body>
          <!-- Navbar -->
            <jsp:include page="/views/layout/navbar.jsp"></jsp:include>
          <!-- Navbar -->

          <!-- Carousel -->
          <div id="Banner" class="carousel slide" data-ride="carousel">
               <div class="carousel-inner">
                    <div class="carousel-item active">
                         <img src="views/image/imagecarousel1.jpg" class="d-block w-100" alt="gambar">
                    </div>
                    <div class="carousel-item">
                         <img src="views/image/imagecarousel2.jpg" class="d-block w-100" alt="gambar">
                    </div>
                    <div class="carousel-item">
                         <img src="views/image/imagecarousel3.jpg" class="d-block w-100" alt="gambar">
                    </div>
                    <div class="carousel-item">
                         <img src="views/image/imagecarousel4.jpg" class="d-block w-100" alt="gambar">
                    </div>
                    
               </div>
               <a class="carousel-control-prev" href="#Banner" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
               </a>
               <a class="carousel-control-next" href="#Banner" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
               </a>
          </div>
          <!-- Carousel -->
          
          <!-- Keunggulan -->
          <div class="class container-fluid py-5 mt-3" id="Keunggulan">
               <div class="container">
                    <div class="row">
                         <div class="col-12">
                              <h3 class="text-center" style="color: black;"> Why Choose Us? </h3>
                         </div>     
                    </div>
                    
                    <div class="row">
                         <div class="container">  
                              <div class="row mt-4">
                                   <div class="col-lg-3 text-center col-sm-6 mt-3">
                                        <img src="views/image/Icon1.png" alt="" style="width: 120px;">
                                        <h6>Fast Respon 7x24 Hours</h6>
                                   </div>
                                   <div class="col-lg-3 text-center col-sm-6 mt-3">
                                        <img src="views/image/Icon2.png" alt="" style="width: 120px;">
                                        <h6>Free Shipping 100%</h6>
                                   </div>
                                   <div class="col-lg-3 text-center col-sm-6 mt-3">
                                        <img src="views/image/Icon3.png" alt="" style="width: 120px;">
                                        <h6>Good Quality</h6>
                                   </div>
                                   <div class="col-lg-3 text-center col-sm-6 mt-3">
                                        <img src="views/image/Icon4.png" alt="" style="width: 120px;">
                                        <h6>Easy Online Purchase</h6>
                                   </div>
                              </div>
                         </div>
                    </div>
               </div>
          </div>
          <!-- Keunggulan -->
          
          <!-- About Us -->
          <div class="container-fluid py-5 mt-3" style="background-color: #ECECEC;" id="about">
               <div class="container">

                    <div class="row align-items-center">
                         <div class="col-md-6 col-sm-12 mt-3 col-md-5">
                              <img style="border-radius: 15px;" src="views/image/AboutUs.jpg" alt="" class="img-fluid ">
                         </div>
                         <div class="col-md-6 col-md-5 col-sm-12 mt-3">
                              <h6 class="smallTittle" style="color: #C2ADFF;">ABOUT US</h6>
                              <h4 class="mt-2">Easy To Access Everywhere</h4>
                              <p class="mt-3">The development of technological advances is one of the main reasons for us to make www.shopet.com as our 
                              only official website in serving every customer online. In service, we always try to be able to serve your needs 
                              in meeting all kinds of needs that you need for your pets. We are also always ready to provide maximum information
                              and always provide the best products in each class with a wide selection of variants.</p>
                              <p><a class="btn btn-outline-secondary mt-3" href="lokasi.jsp" target="_blank" role="button">More Info</a></p>
                         </div>
                    </div>
               </div>
          </div>
          <!-- About Us -->

          <!-- Testimonials -->
          <div class="class container-fluid mt-5" id="testimonial">
               <div class="container">
                    <div class="row text-center">
                         <div class="col-12">
                              <h6 class="smallTittle" style="color: #C2ADFF"> TESTIMONIALS </h6>
                              <h4 class="text mt-2" style="color: black"> What People Say About Us? </h4>
                         </div>     
                    </div>
                    <div class="testimonials-clean">
                         <div class="container">
                             <div class="row people">
                                 <div class="col-md-6 col-lg-4 item">
                                     <div class="box zoom">
                                         <p class="description">Webnya kog keren :D</p>
                                     </div>
                                     <div class="author"><img class="rounded-circle" src="views/image/kunto1.jpg">
                                         <h5 class="name">Kunto Wicaksono</h5>
                                         <p class="title">CEO of Company Inc.</p>
                                     </div>
                                 </div>
                                 <div class="col-md-6 col-lg-4 item">
                                     <div class="box zoom">
                                         <p class="description">Web teranjayabadi</p>
                                     </div>
                                     <div class="author"><img class="rounded-circle" src="views/image/sultan1.jpeg">
                                         <h5 class="name">Sultan Anugrah</h5>
                                         <p class="title">Founder of Style Co.</p>
                                     </div>
                                 </div>
                                 <div class="col-md-6 col-lg-4 item">
                                     <div class="box zoom">
                                         <p class="description">Debes bet da ah webnya</p>
                                     </div>
                                     <div class="author"><img class="rounded-circle" src="views/image/sri2.jpeg">
                                         <h5 class="name">Sri Indarti</h5>
                                         <p class="title">Owner of Creative Ltd.</p>
                                     </div>
                                 </div>
                             </div>
                         </div>
                     </div>
               </div>
          </div> 
          <!-- Testimonials -->
          
          <!-- footer -->
            <jsp:include page="/views/layout/footer.jsp"></jsp:include>
          <!-- footer -->
          
          <!-- script -->
            <jsp:include page="/views/layout/script.jsp"></jsp:include>
          <!-- script -->
     </body>
</html>
