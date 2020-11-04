<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>DreamTire</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="./resources/css/header.css">    
    <link rel="stylesheet" href="./resources/css/top.css">
    <link rel="stylesheet" href="./resources/css/contact.css">
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
              <li class="drop"><a href="main.html#services" data-after="services" class="dropbtn">서비스 <span class="fa fa-plus"></span></a>
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
              <li><a href="main.jsp#projects" data-after="event">이벤트</a></li>
              <li class="drop"><a href="main.html#customer" data-after="Customer center">고객센터 <span class="fa fa-plus"></span></a>
                <ul class="dropdown">
                  <li><a href="main.html#customer">공지 사항</a></li>
                  <li><a href="main.html#contact">1:1 고객상담</a></li>
                  <li><a href="#">관리자</a></li>                  
                </ul>              
              </li>              
              <li><a href="join.jsp" data-after="signup login"><span>회원가입</span>/<span>로그인</span></a></li>
            </ul>
          </div>
        </div>
      </div>
      <span id="Back2Top">&#8593;</span>
    </header>       
    <section id="contact" >
      <div class="contact container">     
        <div class="contact-title">
          <h2>Contact Us</h2>
          <p>
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem
            officia, quod id nesciunt ea ipsa eaque minima praesentium ducimus
            soluta tempore dolorum, natus quae!
          </p>
        </div>
        <article>
          <div class="contactInfo">
            <div class="box">
              <div class="icon">
                <i class="fa fa-map-marker" aria-hidden="true"></i>
              </div>
              <div class="text">
                <h3>Address</h3>
                <p>대구시 동구 입석로 116번지</p>
              </div>
            </div>
            <div class="box">
              <div class="icon">
                <i class="fa fa-phone" aria-hidden="true"></i>
              </div>
              <div class="text">
                <h3>Phone</h3>
                <p>507-475-6094</p>
              </div>
            </div>
            <div class="box">
              <div class="icon">
                <i class="fa fa-envelope-o" aria-hidden="true"></i>
              </div>
              <div class="text">
                <h3>Email</h3>
                <p>rkkr7d3421@temporary-mail.net</p>
              </div>
            </div>
          </div>
          <div class="contactForm">
            <form action="#">
              <div class="row100">
                <div class="col">
                  <div class="inputBox">
                    <input type="text" name="" required="required" />
                    <span class="text">Name</span>
                    <span class="line"></span>
                  </div>
                </div>
                <div class="col">
                  <div class="inputBox">
                    <input type="text" name="" required="required" />
                    <span class="text">Title</span>
                    <span class="line"></span>
                  </div>
                </div>
              </div>
              <div class="row100">
                <div class="col">
                  <div class="inputBox">
                    <input type="text" name="" required="required" />
                    <span class="text">Email</span>
                    <span class="line"></span>
                  </div>
                </div>
                <div class="col">
                  <div class="inputBox">
                    <input type="text" name="" required="required" />
                    <span class="text">Mobile</span>
                    <span class="line"></span>
                  </div>
                </div>
              </div>
              <div class="row100">
                <div class="col">
                  <div class="inputBox textarea">
                    <textarea required="required"></textarea>
                    <span class="text">Type your message Here...</span>
                    <span class="line"></span>
                  </div>
                </div>
              </div>
              <div class="row100">
                <div class="col">
                  <input type="submit" value="등록" />
                </div>
                <div class="col">
                  <input type="submit" value="수정" />
                </div>
                <div class="col">
                  <input type="submit" value="삭제" />
                </div>
              </div>            
            </form>
          </div>  
        </article>
      </div>
    </section>        
    <!-- ===== SCROLL REVEAL ===== -->
    
    <!-- ===== MAIN JS ===== -->
    <script src="resources/JS/main.js"></script>
    <!-- ===== Top Js ===== -->
    <script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="./resources/script/top.js"></script>
    
  </body>
</html>
