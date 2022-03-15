<%-- 
    Document   : article
    Created on : Jul 20, 2021, 2:26:21 PM
    Author     : SHOPET
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <head>
        <jsp:include page="/views/layout/head.jsp">
            <jsp:param name="title" value="Articles"></jsp:param>
        </jsp:include>
        
        <!-- Manggil style External -->
        <style type="text/css">
            <%@ include file="views/css/Style.css"%>
        </style>
    </head>
    <body>
        <jsp:include page="/views/layout/navbar.jsp"></jsp:include>
        
        <div class="container mt-5">
               <div>
                    <div class="col-sm-12">
                         <div class="card zoom2">
                            <div class="row">
                                 <div class="col-md-3">
                                      <img src="views/image/ImageArticle1.png" class="img-fluid rounded-start"  alt="...">
                                 </div>
                                 <div class="col-md-9">
                                   <div class="card-body align-content-center">
                                        <h5 class="card-text" style="color: #c2adff;">7 Tips for Choosing Food for Cats</h5>
                                        <p class="card-text mt-3">Cats need a good diet and balanced nutrition in order to live a healthy life. How to choose food for cats?</p>
                                        <a href="#"  style="color:#c2adff ;"><small>Read More </small></a>
                                   </div>    
                                 </div>
                            </div>
                         </div>
                       </div>
               </div>
          </div>          
          
          <div class="container mt-3">
               <div>
                    <div class="col-sm-12">
                         <div class="card zoom2">
                            <div class="row">
                                 <div class="col-md-3">
                                      <img src="views/image/ImageArticle2.png" class="img-fluid rounded-start" alt="...">
                                 </div>
                                 <div class="col-md-9">
                                   <div class="card-body align-content-center">
                                        <h5 class="card-text" style="color: #c2adff;">How to care for a koi fish pond so that koi fish are healthy</h5>
                                        <p class="card-text mt-3">The color strokes on the back of the koi fish will look more beautiful when viewed from above. Therefore, generally koi fish are kept in ponds and not in aquariums.</p>
                                        <a href="#"  style="color:#c2adff ;"><small>Read More </small></a>
                                   </div>   
                                 </div>
                              </div>
                         </div>
                    </div>
               </div>
          </div>

          <div class="container mt-3">
               <div>
                    <div class="col-sm-12">
                         <div class="card zoom2">
                            <div class="row">
                                 <div class="col-md-3">
                                      <img src="views/image/ImageArticle3.png" class="img-fluid rounded-start" alt="...">
                                 </div>
                                 <div class="col-md-9">
                                   <div class="card-body align-content-center">
                                        <h5 class="card-text" style="color: #c2adff;">7 Ways to take care of birds for health and longevity</h5>
                                        <p class="card-text mt-3">Birds are one of the most favorite house pets. Their presence can be good friends at home because birds also like to interact with humans.</p>
                                        <a href="#"  style="color:#c2adff ;"><small>Read More </small></a>
                                   </div>    
                                 </div>
                              </div>
                         </div>
                    </div>
               </div>
          </div>

          <div class="container mt-3 mb-5">
               <div>
                    <div class="col-sm-12">
                         <div class="card zoom2">
                            <div class="row">
                                 <div class="col-md-3">
                                      <img src="views/image/ImageArticle4.png" class="img-fluid rounded-start" alt="...">
                                 </div>
                                 <div class="col-md-9">
                                      <div class="card-body align-content-center">
                                           <h5 class="card-text" style="color: #c2adff;">The right way to play with pets</h5>
                                           <p class="card-text mt-3">According to Robert Irwan, a professional dog trainer, the first factor that must be considered when playing and training your pet is to know its character.</p>
                                           <a href="#"  style="color:#c2adff ;"><small>Read More </small></a>
                                      </div>    
                                 </div>
                              </div>
                         </div>
                    </div>
               </div>
          </div>

        <jsp:include page="/views/layout/footer.jsp"></jsp:include>
        <jsp:include page="/views/layout/script.jsp"></jsp:include>
          
    </body>
</html>
