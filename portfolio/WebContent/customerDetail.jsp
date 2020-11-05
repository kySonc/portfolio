<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <%@ include file="header.jsp" %>
        
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
    <script src="./resources/script/main.js"></script>
    <!-- ===== Top Js ===== -->
    <script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="./resources/script/top.js"></script>
    
  </body>
</html>
