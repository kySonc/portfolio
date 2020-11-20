<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>DreamTire</title>
    <link rel="shortcut icon" href="/resources/icon/controls.png" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="/resources/css/header.css">
    <link rel="stylesheet" href="/resources/css/top.css">    
    <link rel="stylesheet" href="/resources/css/join.css">        
  </head>
  <body>
  	<c:if test="${ loginResult == -1 || loginResult == 0 }">
		<script>
			alert("아이디 혹은 비밀번호가 틀렸습니다.");
		</script>
	</c:if>
	<c:if test="${sessionID != null }">
		<script>
			alert("이미 로그인 중입니다."); 
			location.href = "index.do"; /* index.jsp 페이지 이동 */
		</script>
	</c:if>
	<c:if test="${joinResult == 0}">
			<script>
			alert("아이디가 중복됩니다.");
			</script>
	</c:if>	
  
    <!-- ===== HEADER ===== -->
    <%@ include file="header.jsp" %>
           
    <section id="hero">
        <div class="hero join">                
          <div class="wrapper">        
              <div class="title-text">
                <div class="title login">로그인</div>
                <div class="title signup">회원 가입</div>
              </div>
              <div class="form-container">
                <div class="slide-controls">
                  <input type="radio" name="slider" id="login" checked />
                  <input type="radio" name="slider" id="signup" />
                  <label for="login" class="slide login">Login</label>
                  <label for="signup" class="slide signup">Signup</label>
                  <div class="slide-tab"></div>
                </div>
                <div class="form-inner">
                <form action="login.do" class="login" method="post">
                  <div class="field">
                    <input type="text" placeholder="id" name="id" required />
                  </div>
                  <div class="field">
                    <input type="password" placeholder="password" name="pw" required />
                  </div>
                  <div class="pass-link"><a href="#">Forgot password?</a></div>
                  <div class="field">
                    <input type="submit" value="Login" />
                  </div>
                  <div class="signup-link">
                    Not a member? <a href="#">Signup now</a>
                  </div>
                </form>
                <form action="join.do" name="frm" class="signup" method="post">
                  <div class="field">
                    <input type="text" placeholder="id : 문자로 시작해주세요" name="id" required />
                  </div>
                  <div class="field">
                    <input type="password" placeholder="password : 숫자만 입력해주세요" name="pw" required />
                  </div>
                  <div class="field">
                    <input type="text" placeholder="name : 한글만 입력해주세요" name="name" required />
                  </div>
                  <div class="field">
                    <input class="btn" type="button" value="Signup" onclick="signUpCheck()"/>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>        
    </section>
    
    <!-- ===== VALIDATION ===== -->
    <script src="/resources/validation/member.js"></script>
    
    <!-- ===== JOIN JS ===== -->
    <script src="/resources/script/join.js"></script>
    
    <!-- ===== MAIN JS ===== -->
    <script src="/resources/script/index.js"></script>
    
    <!-- ===== Top JS ===== -->
    <script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="/resources/script/top.js"></script>
    
  </body>
</html>
