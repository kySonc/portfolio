<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    <link rel="stylesheet" href="/resources/css/contact.css">
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
                <p>dlswhsqhr@gmail.com</p>
              </div>
            </div>
          </div>
          <div class="contactForm">
            <form action="bbsupdate.do" method="post">                      
              <div class="row100">
                <div class="col">
                  <div class="inputBox">
                  	<input type="text" name="bbsTitle" value="${bbsupdate.bbsTitle }" required="required"/>
                    <span class="text">Title</span>
                    <span class="line"></span>                    
                  </div>
                </div>
                <div class="col">
                  <div class="inputBox">
                  	<input type="text" name="bbsName" value="${bbsupdate.bbsName }" required="required" />
                    <span class="text">Name</span>
                    <span class="line"></span>                    
                  </div>
                </div>
              </div>
              <div class="row100">
                <div class="col">
                  <div class="inputBox">
                  	<input type="text" name="bbsEmail" value="${bbsupdate.bbsEmail }" required="required"/>
                    <span class="text">Email</span>
                    <span class="line"></span>                    
                  </div>
                </div>
                <div class="col">
                  <div class="inputBox">
                  	<input type="text" name="bbsPhone" value="${bbsupdate.bbsPhone }" required="required" />
                  	<span class="text">Phone</span>
                    <span class="line"></span>                    
                  </div>
                </div>                
              </div>
              <div class="row100">
                <div class="col">
                  <div class="inputBox textarea">
                    <textarea name="bbsContent" required="required">${bbsupdate.bbsContent }</textarea>
                    <span class="text">Type your message Here...</span>
                    <span class="line"></span>
                  </div>
                </div>
              </div>
              
              <jsp:useBean id="bbsviews" class="com.kysonc.dto.MemberDto" scope="request" />
              <jsp:setProperty name="bbsviews" property="id" param="bbsId"/>
              
              <!--  <%out.println(bbsviews.getId()); %> -->
                            
              <div class="smallpage"><span>Number.</span><span style="color: red; padding-left: 5px;"> <jsp:getProperty name="bbsviews" property="id"/></span></div>
                                         
		      <div class="row100">
		      	<div class="col">
		      		<input type="button" onClick="location.href='bbsview.do?#notice'" value="돌아기기" />
					<input type="submit" value="등록" />    	
                	<input type="reset" value="다시쓰기" />
              		<input type="button" onClick="location.href='bbsdelete.do?bbsId=<jsp:getProperty name="bbsviews" property="id"/>#notice'" value="삭제" />              	
              	</div>				           	
              </div>		      
              <div style="display: none;" >
				<input type="text" name="bbsId" value="${bbsupdate.bbsId }" />
			  </div>			  
            </form>
          </div>  
        </article>
      </div>
    </section>        
    
    <!-- ===== FOOTER =====-->     
    <%@ include file="footer.jsp" %>
    
    <!-- ===== MAIN JS ===== -->
    <script src="/resources/script/index.js"></script>
    <!-- ===== Top JS ===== -->
    <script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="/resources/script/top.js"></script>
    
  </body>
</html>
