<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.kysonc.dao.BbsDao"%>
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
                <p>dlswhsqhr@gmail.com</p>
              </div>
            </div>
          </div>
          <div class="contactForm">
            <form action="#" method="post">
              <div class="row100">
                <div class="col">
                  <div class="inputBox">
                  	<input type="text" value="${bbsview.bbsTitle }" onfocus="this.blur()" />
                    <span class="text">Title</span>
                    <span class="line"></span>                  	
                  </div>
                </div>
                <div class="col">
                  <div class="inputBox">
                  	<input type="text" value="${bbsview.bbsName }" onfocus="this.blur()"/>
                    <span class="text">Name</span>
                    <span class="line"></span>                    
                  </div>                  
                </div>
              </div>  
              <div class="row100">  
                <div class="col">
                  <div class="inputBox">
                  	<input type="text" disabled/>
                    <span class="text">작성일 : <fmt:formatDate pattern="yyyy-MM-dd" value="${bbsview.bbsDate}" /></span>                  	
                    <span class="line"></span>                     	
                  </div>                  
                </div>             
                <div class="col">
                  <div class="inputBox">
                  	<input type="text" disabled />
                  	<span class="text">ID : ${bbsview.id }</span>                    
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
              
            <!-- ===== 페이지처리 ===== -->
<%
	BbsDao bbsDao = BbsDao.getInstance();   
    int nextval = bbsDao.nextval();
    pageContext.setAttribute("nextval", nextval);
    int minimumBbsId = bbsDao.prevval(); 
    pageContext.setAttribute("minimumBbsId", minimumBbsId);
%>
			<!-- 시작 번호 -->
              <c:set var="startNum" value="${bbsview.bbsId}" />
            
			<!-- 페이지 첫 번호 -->
              <c:set var="FirstNum" value="${minimumBbsId}" />
            
 			<!-- 마지막 번호 -->
              <c:set var="lastNum" value="${nextval}" />
            
            <!--<c:out value="${bbsview.bbsId}"></c:out>-->             
            <!--<c:out value="${FirstNum}"></c:out>-->             
            <!--<c:out value="${lastNum}"></c:out>-->     
                     
           	  <div class="smallpage">
           	  	<span>Number.</span>
           	  	<span style="color: red; padding: 0px 5px;">${bbsview.bbsId}</span>
           	  	<span style="padding: 0px 5px;">/</span>
           	  	<span style="padding: 0px 5px;">lastNum.</span>
           	  	<span>${lastNum}</span>
           	  </div>
            
              <div class="row100">
			  	<div class="col">
			  		<input type="button" onClick="location.href='index.do?#notice'" value="목록" />              
                                              
            <!-- 이전 버튼 -->
           	  		<c:if test="${startNum > FirstNum}">            
            			<input type="button" onClick="location.href='bbsview.do?bbsId=${startNum-1}'" value="이전" />           	            	
            		</c:if>
            		<c:if test="${startNum <= FirstNum}">
            			<input type="button" onclick="alert('이전 페이지가 없습니다')" value="이전" />              	
            		</c:if>
                                   
            <!-- 다음 버튼  -->
            		<c:if test="${startNum < lastNum}">
            			<input type="button" onClick="location.href='bbsviewPage.do?bbsId=${startNum+1}'" value="다음" />              	
            		</c:if>
            <!-- 수정 삭제 버튼  -->            		
            		<c:choose>
						<c:when test="${bbsview.id == sessionID || sessionID == 'admin' }">		      
							<input type="button" onClick="location.href='bbsupdate.do?bbsId=${bbsview.bbsId}'" value="수정" />                	
                       <!-- <input type="button" onClick="location.href='bbsdelete.do?bbsId=${bbsview.bbsId}'" value="삭제" />  -->
               			</c:when>
		  			</c:choose>    
                        
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
    
            
    <!-- ===== SCROLL REVEAL ===== -->
        
    <!-- ===== Top JS ===== -->
    <script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="/resources/script/top.js"></script>
    
  </body>
</html>
