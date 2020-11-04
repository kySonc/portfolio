<%@ page contentType="text/html; charset=utf-8" %>
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
    <header id="header">
      <div class="header container">
        <div class="nav-bar">
          <div class="brand">
            <a href="main.jsp">
              <h1><span>D</span>ream <span>T</span>ire</h1>
            </a>
          </div>
          <div class="nav-list">
            <div class="hamburger"><div class="bar"></div></div>
            <ul>
              <li><a href="main.jsp#product" data-after="Tier">타이어</a></li>
              <li class="drop"><a href="main.jsp#services" data-after="services" class="dropbtn">서비스 <span class="fa fa-plus"></span></a>
                <ul class="dropdown">
                  <li class="drop2"><a href="#" >나의 차량관리 <span class="fa fa-plus"></span></a>
                    <ul class="dropdown2">
                      <li><a href="#">엔진 오일</a></li>
                      <li><a href="#">미션 오일</a></li>                      
                    </ul>
                  </li>
                  <li><a href="#">픽업서비스</a></li>
                  <li><a href="#">휠얼라이먼트</a></li>                  
                </ul>              
              </li>
              <li><a href="main.jsp#event" data-after="event">이벤트</a></li>
              <li class="drop"><a href="main.jsp#customer" data-after="Customer center">고객센터 <span class="fa fa-plus"></span></a>
                <ul class="dropdown">
                  <li><a href="main.jsp#customer">공지 사항</a></li>
                  <li><a href="main.jsp#contact">1:1 고객상담</a></li>
                  <li><a href="customerDetail.jsp">관리자</a></li>                  
                </ul>              
              </li>              
              <li><a href="join.jsp" data-after="signup login"><span>회원가입</span>/<span>로그인</span></a></li>
            </ul>
          </div>
        </div>
      </div>
      <span id="Back2Top">&#8593;</span>
    </header>
    
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
    <script src="resources/js/main.js"></script>
    <!-- ===== Top Js ===== -->
    <script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="./resources/script/top.js"></script>
    
  </body>
</html>
