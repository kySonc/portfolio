<%@page import="com.kysonc.dto.BbsDto"%>
<%@page import="java.util.List"%>
<%@page import="com.kysonc.dao.BbsDao"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>게시글 보여주기</title>
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
                <p>rkkr7d3421@temporary-mail.net</p>
              </div>
            </div>
          </div>
          <div class="contactForm">
            <form action="#" method="post">
              <div class="row100">
                <div class="col">
                  <div class="inputBox">
                    <input type="text" value="${bbsview.id }" onfocus="this.blur()"/>
                    <span class="text">name</span>
                    <span class="line"></span>
                  </div>
                </div>
                <div class="col">
                  <div class="inputBox">
                    <input type="text" value="${bbsview.bbsTitle }" onfocus="this.blur()" />
                    <span class="text">Title : ${bbsview.bbsTitle }</span>
                    <span class="line"></span>
                  </div>
                </div>
              </div>
              <div class="row100">
                <div class="col">
                  <div class="inputBox">
                    <input type="text" name="" required="required" disabled/>
                    <span class="text">Email : ${bbsview.bbsId }</span>
                    <span class="line"></span>
                  </div>
                </div>
                <div class="col">
                  <div class="inputBox">
                    <input type="text" name="" required="required" disabled/>
                    <span class="text">조회수 : ${bbsview.bbsHit }</span>
                    <span class="line"></span>
                  </div>
                </div>
              </div>
              <div class="row100">
                <div class="col">
                  <div class="inputBox textarea">
                    <textarea onfocus="this.blur()">${bbsview.bbsContent }</textarea>
                    <span class="text">Type your message Here...</span>
                    <span class="line"></span>
                  </div>
                </div>
              </div>
                                         
           <c:choose>
			<c:when test="${bbsview.id == sessionID || sessionID == 'admin' }">
		      <div class="row100">
				<div class="col">
                	<input type="button" onClick="location.href='bbsdelete.do?bbsId=${bbsview.bbsId}'" value="삭제" />
                </div>
              	<div class="col">
              		<input type="button" onClick="location.href='bbsupdate.do?bbsId=${bbsview.bbsId}'" value="수정" />
              	</div>
              </div>
		   </c:when>
		  </c:choose>           
		     
            </form>
          </div>  
        </article>
      </div>
    </section>        
    <!-- ===== SCROLL REVEAL ===== -->
    
    <!-- ===== MAIN JS ===== -->
    <script src="/resources/script/index.js"></script>
    <!-- ===== Top JS ===== -->
    <script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="/resources/script/top.js"></script>
    
  </body>
</html>
