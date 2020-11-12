<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>DreamTire</title>
    <link rel="shortcut icon" type="image⁄x-icon" href="/resources/icon/controls.png" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="/resources/css/header.css">    
    <link rel="stylesheet" href="/resources/css/top.css">
  </head>
  <body>
    <!-- ===== HEADER ===== -->
    <header id="header">
      <div class="header container">
        <div class="nav-bar">
          <div class="brand">
            <a href="index.do#hero">
              <h1><span>D</span>ream <span>T</span>ire</h1>
            </a>
          </div>
          <div class="nav-list">
            <div class="hamburger"><div class="bar"></div></div>
            <ul>
              <li><a href="index.do#product" data-after="Tier">타이어</a></li>
              <li class="drop"><a href="index.do#services" data-after="services" class="dropbtn">서비스 <span class="fa fa-plus"></span></a>
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
              <li><a href="index.do#event" data-after="event">이벤트</a></li>
              <li class="drop"><a href="index.do#notice" data-after="Customer center">고객센터 <span class="fa fa-plus"></span></a>
                <ul class="dropdown">
                  <li><a href="index.do#notice">공지 사항</a></li>
                  <li><a href="index.do#contact">1:1 고객상담</a></li>
                  <li><a href="customerDetail.jsp">관리자</a></li>                  
                </ul>              
              </li>              
              <li>
              	<c:if test="${sessionID == null }">
					<!-- sessionID에 아이디값이 없으면 로그인 버튼 출력 -->
					<a href="join.do" data-after="signup login"><span>회원가입</span>/<span>로그인</span></a>
			  	</c:if>
			  	<c:if test="${sessionID != null }">
			  		<!-- sessionID에 아이디값이 있으면 로그아웃 버튼 출력 -->
			  		<a href="logout.do"><span>로그아웃</span></a>			  					  	
			  		<a href="memberout.do?id=${sessionID}"><span>회원 탈퇴</span></a>			  					  	
			  	</c:if>
			  </li>
            </ul>
          </div>
        </div>
      </div>
      <span id="Back2Top">&#8593;</span>
    </header>       
      
    <!-- ===== ABOUT ===== -->
    <!-- ===== SKILLS ===== -->
    <!-- ===== PORTFOLIO ===== -->
    <!-- ===== CONTACT ===== -->
    <!-- ===== FOOTER =====-->    
    <!-- ===== SCROLL REVEAL ===== -->
    
    <!-- ===== MAIN JS ===== -->
    <script src="/resources/script/index.js"></script>
    
    <!-- ===== Top JS ===== -->
    <script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="/resources/script/top.js"></script>
    
  </body>
</html>
