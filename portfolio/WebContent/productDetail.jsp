<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>DreamTire</title>    
    <link rel="stylesheet" href="resources/css/header.css">    
    <link rel="stylesheet" href="resources/css/top.css">
    <link rel="stylesheet" href="resources/css/productDetail.css">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>    
  </head>
  <body>
    <!-- ===== HEADER ===== -->
    <%@ include file="header.jsp" %>
    
    <!-- ===== PRODUCT DETAIL ===== -->
    <section id="productDetail">
        <div class="productDetail container">
          <div class="productDetail-Box">
            <div class="imgBx">
                <img src="./resources/images/t2.jpg" alt="">
            </div>
            <div class="details">
                <div class="content">
                    <h2>Winter i*cept IZ2 A</h2>
                    <h3>245 / 45 / 18</h3>
                    <div class="reviews">
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star-half-alt"></i>
                    </div>
                    <p>겨울철 빙판길에서도 안전한 타이어
                      (추천 차종: 아반떼, K3, SM5, 포르테 등 / 강설지역 운행이 많은 차량)</p>
                    <h3>115000원</h3>
                    <button>Buy Now</button>
                </div>
            </div>
        </div>
        </div>
    </section>  

    <!-- ===== MAIN JS ===== -->
    <script src="./resources/script/main.js"></script>
    <!-- ===== Top Js ===== -->
    <script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="./resources/script/top.js"></script>
    
  </body>
</html>
