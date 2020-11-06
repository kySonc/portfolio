<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <!-- ===== HEADER ===== -->
    <%@ include file="header.jsp" %>
           
    <section id="hero">
        <div class="hero join">                
          <div class="wrapper">        
              <div class="title-text">
                <div class="title login">Login Form</div>
                <div class="title signup">Signup Form</div>
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
                <form action="#" class="login">
                  <div class="field">
                    <input type="text" placeholder="Email Address" required />
                  </div>
                  <div class="field">
                    <input type="password" placeholder="password" required />
                  </div>
                  <div class="pass-link"><a href="#">Forgot password?</a></div>
                  <div class="field">
                    <input type="submit" value="Login" />
                  </div>
                  <div class="signup-link">
                    Not a member? <a href="#">Signup now</a>
                  </div>
                </form>
                <form action="#" class="signup">
                  <div class="field">
                    <input type="text" placeholder="Email Address" required />
                  </div>
                  <div class="field">
                    <input type="password" placeholder="password" required />
                  </div>
                  <div class="field">
                    <input type="password" placeholder="Confirm password" required />
                  </div>
                  <div class="field">
                    <input type="submit" value="Signup" />
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>        
    </section>
    
    <!-- ===== JOIN JS ===== -->
    <script src="/resources/script/join.js"></script>
    
    <!-- ===== MAIN JS ===== -->
    <script src="/resources/script/main.js"></script>
    
    <!-- ===== Top JS ===== -->
    <script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="/resources/script/top.js"></script>
    
  </body>
</html>
