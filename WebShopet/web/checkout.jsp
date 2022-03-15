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
            <jsp:param name="title" value="Checkout"></jsp:param>
        </jsp:include>
        
        <!-- Manggil style External -->
          <style type="text/css">
              <%@ include file="views/css/stylecheckout.css"%>
          </style>
    </head>
    <body>
        <jsp:include page="/views/layout/navbar.jsp"></jsp:include>
        
        <div class="card mt-50 mb-50">
            <div class="card-title mx-auto mb-4"> Form Payment</div>
            <form>
                <span id="card-header">First Name*</span>
                    <div class="row row-1">
                         <input type="text" name="namaawal" required>
                    </div>
                
                <span id="card-header">Last Name*</span>
                    <div class="row row-1">
                         <input type="text" name="namaakhir" required>
                    </div>
                
                <span id="card-header">E-mail*</span>
                    <div class="row-1">
                         <input type="email" name="emailform" required>
                    </div>
                
                <span id="card-header">Number Telephone*</span>
                    <div class="row row-1">
                        <input type="text" name="notelp" required>
                    </div
                    
                <span id="card-header">Address*</span>
                    <div class="row row-1">
                        <input type="text" name="alamat" required>
                    </div>
                
                <span id="card-header">Method Payment</span>                      
            </form>
                <button class="btn btn-primary btn-sm mt-2" type="submit" role="button" data-target="#ovo" data-toggle="modal">Pay With OVO</button>
                <!-- Modal -->
                    <div class="modal fade" id="ovo" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h2 class="modal-title text-center" id="exampleModalLabel">OVO</h5>
                                </div>
                                <div class="modal-body">
                                    <div class="row">
                                        <div class="col-md-6 text-center">
                                            <img src="views/image/Barcode.png" alt="">
                                            
                                        </div>
                                    </div>
                                    <div class="mt-3">
                                        <a class="btn btn-success btn-sm mt-2" href="main.jsp" onclick="alert('Thank You, Please Wait Your Order')">Checkout</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                <!-- Modal -->
        </div>
    
        

        
        <!-- footer -->
            <jsp:include page="/views/layout/footer.jsp"></jsp:include>
        <!-- footer -->
        <!-- script -->
            <jsp:include page="/views/layout/script.jsp"></jsp:include>
        <!-- script -->
    </body>
</html>
