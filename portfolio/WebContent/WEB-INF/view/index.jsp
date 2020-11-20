<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>DreamTire</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="shortcut icon" href="/resources/icon/controls.png" />
    <link rel="stylesheet" href="/resources/css/top.css">
    <link rel="stylesheet" href="/resources/css/style.css">
    <link rel="stylesheet" href="/resources/css/popup.css">
    <link rel="stylesheet" href="/resources/css/product.css" />    
    <link rel="stylesheet" href="/resources/css/lightslider.css" />
    <link rel="stylesheet" href="/resources/css/services.css">
    <link rel="stylesheet" href="/resources/css/contact.css">
    <link rel="stylesheet" href="/resources/css/notice.css">
    <link rel="stylesheet" href="/resources/css/search.css">
    
     <script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
    
    <script>
        $(document).ready(function(){
            $(".default_option").click(function(){
                $(".dropdown ul").toggleClass("active");
            });

            $(".dropdown ul li").click(function(){
                var text = $(this).text();
                $(".default_option").text(text)
                $(".dropdown ul").toggleClass("active");
            })
        });
    </script>    
    
  </head>
  <body>
  	<c:if test="${loginResult == 1}">
		<script>
			alert("로그인 되었습니다.");
		</script>
	</c:if>
  	<c:if test="${joinResult == 1}">
			<script>
			alert("회원 가입 되었습니다.");
			</script>
	</c:if>
  	
    <!-- ===== HEADER ===== -->
    <%@ include file="header.jsp" %>

    <!-- ===== MAIN ===== -->      
    <section id="hero">
        <div class="hero container">
          <div class="portftitle">
            <h1>Welcome<span></span></h1>
            <h1>to<span></span></h1>
            <h1>Dream Tire<span></span></h1>
            <a href="#Portfolio" type="button" class="cta">Portfolio</a>
          </div>
          <div class="tire-Search">
            <h2>타이어 찾기<span></span></h2>         
            <input type="checkbox" id="show">
            <label for="show" class="bta">Tier 검색</label>
            <div class="popup">
              <label for="show" class="close-btn fa fa-times"></label>
              <div class="text">타이어 사이즈로 찾기</div>
              <form action="#">
                  <div class="data">
                      <label>단면폭</label>
                      <input type="text" required>
                  </div>
                  <div class="data">
                      <label>편평비</label>
                      <input type="text" required>
                  </div>
                  <div class="data">
                      <label>인치</label>
                      <input type="text" required>
                  </div>                
                  <div class="btn">
                      <div class="inner"></div>
                      <button type="submit">확 인</button>
                  </div>
                  <div class="tire-size"><a href="#">나의 타이어 사이즈 확인방법</a></div>
              </form>
            </div>
          </div>
        </div>        
    </section>  

    <!-- ===== PRODUCT ===== -->
    <section id="product" >
      <div class="product container">
        <div class="product-title">
          <h2>Pro<span>d</span>uct</h2>
          <p>
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem
            officia, quod id nesciunt ea ipsa eaque minima praesentium ducimus
            soluta tempore dolorum, natus quae!
          </p>
        </div>
        
        <div class="slider">          
          <ul id="autoWidth" class="cs-hidden">
            <!--1--------------------------------->
            <li class="item-a">
              <!--box slider------------------>
              <div class="imgbox">
                <!--img box------------------->
                <div class="slide-img">
                  <img src="./resources/images/t1.jpg" alt="j1" />
                  <!--overlayer--------------->
                  <div class="overlay">
                    <!--buy btn----------------->
                    <a href="productDetail.do" class="buy-btn">Buy Now</a>
                  </div>
                </div>
                <!--detail box---------------->
                <div class="detail-box">
                  <!--type---------------------->
                  <div class="type">
                    <a href="productDetail.do">Rabbed Cardigan</a>
                    <span>Noe Arrival</span>
                  </div>
                  <!--price------------------->
                  <a href="#" class="price">$23</a>
                </div>
              </div>
            </li>
            <!--2--------------------------------->
            <li class="item-b">
              <!--box slider------------------>
              <div class="imgbox">
                <!--img box------------------->
                <div class="slide-img">
                  <img src="./resources/images/t1.jpg" alt="j1" />
                  <!--overlayer--------------->
                  <div class="overlay">
                    <!--buy btn----------------->
                    <a href="productDetail.do" class="buy-btn">Buy Now</a>
                  </div>
                </div>
                <!--detail box---------------->
                <div class="detail-box">
                  <!--type---------------------->
                  <div class="type">
                    <a href="productDetail.do">Rabbed Cardigan</a>
                    <span>Noe Arrival</span>
                  </div>
                  <!--price------------------->
                  <a href="#" class="price">$23</a>
                </div>
              </div>
            </li>
            <!--3--------------------------------->
            <li class="item-c">
              <!--box slider------------------>
              <div class="imgbox">
                <!--img box------------------->
                <div class="slide-img">
                  <img src="./resources/images/t1.jpg" alt="j1" />
                  <!--overlayer--------------->
                  <div class="overlay">
                    <!--buy btn----------------->
                    <a href="productDetail.do" class="buy-btn">Buy Now</a>
                  </div>
                </div>
                <!--detail box---------------->
                <div class="detail-box">
                  <!--type---------------------->
                  <div class="type">
                    <a href="productDetail.do">Rabbed Cardigan</a>
                    <span>Noe Arrival</span>
                  </div>
                  <!--price------------------->
                  <a href="#" class="price">$23</a>
                </div>
              </div>
            </li>
            <!--4--------------------------------->
            <li class="item-d">
              <!--box slider------------------>
              <div class="imgbox">
                <!--img box------------------->
                <div class="slide-img">
                  <img src="./resources/images/t1.jpg" alt="j1" />
                  <!--overlayer--------------->
                  <div class="overlay">
                    <!--buy btn----------------->
                    <a href="productDetail.do" class="buy-btn">Buy Now</a>
                  </div>
                </div>
                <!--detail box---------------->
                <div class="detail-box">
                  <!--type---------------------->
                  <div class="type">
                    <a href="productDetail.do">Rabbed Cardigan</a>
                    <span>Noe Arrival</span>
                  </div>
                  <!--price------------------->
                  <a href="#" class="price">$23</a>
                </div>
              </div>
            </li>
            <!--5--------------------------------->
            <li class="item-e">
              <!--box slider------------------>
              <div class="imgbox">
                <!--img box------------------->
                <div class="slide-img">
                  <img src="/resources/images/t1.jpg" alt="j1" />
                  <!--overlayer--------------->
                  <div class="overlay">
                    <!--buy btn----------------->
                    <a href="productDetail.do" class="buy-btn">Buy Now</a>
                  </div>
                </div>
                <!--detail box---------------->
                <div class="detail-box">
                  <!--type---------------------->
                  <div class="type">
                    <a href="productDetail.do">Rabbed Cardigan</a>
                    <span>Noe Arrival</span>
                  </div>
                  <!--price------------------->
                  <a href="#" class="price">$23</a>
                </div>
              </div>
            </li>
            <!--6--------------------------------->
            <li class="item-f">
              <!--box slider------------------>
              <div class="imgbox">
                <!--img box------------------->
                <div class="slide-img">
                  <img src="/resources/images/t1.jpg" alt="j1" />
                  <!--overlayer--------------->
                  <div class="overlay">
                    <!--buy btn----------------->
                    <a href="productDetail.do" class="buy-btn">Buy Now</a>
                  </div>
                </div>
                <!--detail box---------------->
                <div class="detail-box">
                  <!--type---------------------->
                  <div class="type">
                    <a href="productDetail.do">Rabbed Cardigan</a>
                    <span>Noe Arrival</span>
                  </div>
                  <!--price------------------->
                  <a href="#" class="price">$23</a>
                </div>
              </div>
            </li>
            <!--7--------------------------------->
            <li class="item-g">
              <!--box slider------------------>
              <div class="imgbox">
                <!--img box------------------->
                <div class="slide-img">
                  <img src="/resources/images/t1.jpg" alt="j1" />
                  <!--overlayer--------------->
                  <div class="overlay">
                    <!--buy btn----------------->
                    <a href="productDetail.do" class="buy-btn">Buy Now</a>
                  </div>
                </div>
                <!--detail box---------------->
                <div class="detail-box">
                  <!--type---------------------->
                  <div class="type">
                    <a href="productDetail.do">Rabbed Cardigan</a>
                    <span>Noe Arrival</span>
                  </div>
                  <!--price------------------->
                  <a href="#" class="price">$23</a>
                </div>
              </div>
            </li>
            <!--8--------------------------------->
            <li class="item-h">
              <!--box slider------------------>
              <div class="imgbox">
                <!--img box------------------->
                <div class="slide-img">
                  <img src="/resources/images/t1.jpg" alt="j1" />
                  <!--overlayer--------------->
                  <div class="overlay">
                    <!--buy btn----------------->
                    <a href="productDetail.do" class="buy-btn">Buy Now</a>
                  </div>
                </div>
                <!--detail box---------------->
                <div class="detail-box">
                  <!--type---------------------->
                  <div class="type">
                    <a href="productDetail.do">Rabbed Cardigan</a>
                    <span>Noe Arrival</span>
                  </div>
                  <!--price------------------->
                  <a href="#" class="price">$23</a>
                </div>
              </div>
            </li>
            <!--9--------------------------------->
            <li class="item-i">
              <!--box slider------------------>
              <div class="imgbox">
                <!--img box------------------->
                <div class="slide-img">
                  <img src="/resources/images/t1.jpg" alt="j1" />
                  <!--overlayer--------------->
                  <div class="overlay">
                    <!--buy btn----------------->
                    <a href="productDetail.do" class="buy-btn">Buy Now</a>
                  </div>
                </div>
                <!--detail box---------------->
                <div class="detail-box">
                  <!--type---------------------->
                  <div class="type">
                    <a href="productDetail.do">Rabbed Cardigan</a>
                    <span>Noe Arrival</span>
                  </div>
                  <!--price------------------->
                  <a href="#" class="price">$23</a>
                </div>
              </div>
            </li>
            <!--10--------------------------------->
            <li class="item-j">
              <!--box slider------------------>
              <div class="imgbox">
                <!--img box------------------->
                <div class="slide-img">
                  <img src="/resources/images/t1.jpg" alt="j1" />
                  <!--overlayer--------------->
                  <div class="overlay">
                    <!--buy btn----------------->
                    <a href="productDetail.do" class="buy-btn">Buy Now</a>
                  </div>
                </div>
                <!--detail box---------------->
                <div class="detail-box">
                  <!--type---------------------->
                  <div class="type">
                    <a href="productDetail.do">Rabbed Cardigan</a>
                    <span>Noe Arrival</span>
                  </div>
                  <!--price------------------->
                  <a href="productDetail.do" class="price">$23</a>
                </div>
              </div>
            </li>
            <!--11--------------------------------->
            <li class="item-k">
              <!--box slider------------------>
              <div class="imgbox">
                <!--img box------------------->
                <div class="slide-img">
                  <img src="/resources/images/t1.jpg" alt="j1" />
                  <!--overlayer--------------->
                  <div class="overlay">
                    <!--buy btn----------------->
                    <a href="productDetail.do" class="buy-btn">Buy Now</a>
                  </div>
                </div>
                <!--detail box---------------->
                <div class="detail-box">
                  <!--type---------------------->
                  <div class="type">
                    <a href="productDetail.do">Rabbed Cardigan</a>
                    <span>Noe Arrival</span>
                  </div>
                  <!--price------------------->
                  <a href="#" class="price">$23</a>
                </div>
              </div>
            </li>
            <!--12--------------------------------->
            <li class="item-l">
              <!--box slider------------------>
              <div class="imgbox">
                <!--img box------------------->
                <div class="slide-img">
                  <img src="/resources/images/t1.jpg" alt="j1" />
                  <!--overlayer--------------->
                  <div class="overlay">
                    <!--buy btn----------------->
                    <a href="productDetail.do" class="buy-btn">Buy Now</a>
                  </div>
                </div>
                <!--detail box---------------->
                <div class="detail-box">
                  <!--type---------------------->
                  <div class="type">
                    <a href="productDetail.do">Rabbed Cardigan</a>
                    <span>Noe Arrival</span>
                  </div>
                  <!--price------------------->
                  <a href="#" class="price">$23</a>
                </div>
              </div>
            </li>
          </ul>
        </div>

    </div>
    </section>

    <!-- ===== SERVICES ===== -->
    <section id="services">
      <div class="services container">
        <div class="service-top">
          <h2>Serv<span>i</span>ces</h2>
          <p>
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem
            officia, quod id nesciunt ea ipsa eaque minima praesentium ducimus
            soluta tempore dolorum, natus quae!
          </p>
        </div>
        <div class="service-bottom">
          <div class="service-item1">            
            <div class="service-icon">
              <img
                src="/resources/icon/픽업.png"
              />
            </div>
            <h2>픽업</h2>
            <p>
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Odio
              asperiores explicabo vitae deserunt laborum incidunt repellat
              doloremque saepe!
            </p>            
          </div>
          <div class="service-item2">
            <div class="service-icon">
              <img
                src="/resources/icon/차량관리.png"
              />
            </div>
            <h2>차량 관리</h2>
            <p>
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Odio
              asperiores explicabo vitae deserunt laborum incidunt repellat
              doloremque saepe!
            </p>
          </div>
          <div class="service-item3">
            <div class="service-icon">
              <img
                src="/resources/icon/얼라이먼트.png"
              />
            </div>
            <h2>휠 얼라이먼트</h2>
            <p>
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Odio
              asperiores explicabo vitae deserunt laborum incidunt repellat
              doloremque saepe!
            </p>
          </div>
          <div class="service-item4">
            <div class="service-icon">
              <img
                src="/resources/icon/세차.png"
              />
            </div>
            <h2>휠 클리너</h2>
            <p>
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Odio
              asperiores explicabo vitae deserunt laborum incidunt repellat
              doloremque saepe!
            </p>
          </div>
        </div>
      </div>
    </section>

    <!-- ===== notice ===== -->
    <section id="notice" >
      <div class="notice container">     
        <div class="notice-title">          
          <h2>Not<span>i</span>ce</h2>
          <p>
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem
            officia, quod id nesciunt ea ipsa eaque minima praesentium ducimus
            soluta tempore dolorum, natus quae!
          </p>
        </div>
        <article>
          <div class="noticeInfo">
            <div class="box">
              <div class="text">
                <h3><a href="index.do#notice">공지 사항</a></h3>                
              </div>
            </div>          
            <div class="box">
              <div class="text">
                <h3><a href="index.do#contact">1 : 1 고객 상담</a></h3>                
              </div>
            </div>         
            <div class="box">
              <div class="text">
                <h3><a href="index.do#admin">관리자</a></h3>                
              </div>
            </div>
          </div>
          
     
          <div class="noticelist">
        <form action="bbs.do#notice">
       <!-- <fieldset>
          			<legend>게시글 검색</legend>
          			<label>검색분류</label>
          			<select name="f">
				  			<option ${(param.f=="bbsTitle")?"selected":""} value="bbsTitle">제목</option>
							<option ${(param.f=="id")?"selected":""} value="id">작성자</option>
					</select>
					<label>검색어</label>
					<input type="text" name="q" value="${param.q}" />
					<input type="submit" value="검색" />			    					 	
			</fieldset> -->
					
			    
			    <div class="wrapper">
        			<div class="search_box">
            			<div class="dropdown">
                			<div class="default_option">All</div>
                			<ul>
                    			<li><input type="hidden"><label>All</label></li>
                    			<li><input type="radio" name="f" value="bbsTitle" id="bbsTitle"><label for="bbsTitle">제목</label></li>
                    			<li><input type="radio" name="f" value="id" id="id"><label for="id">작성자</label></li>
                			</ul>
            			</div>
            			<div class="search_field">
                			<input type="text" class="input" name="q" value="${param.q}" placeholder="Search">
                			<input type="submit" value="&#xf002;" class="fas fa-search" />
                		</div>
                	</div>
                </div>
				
			</form>
				  
            <table>			  	            
              <tr>
                  <th>번호</th>
                  <th>제목</th>
                  <th>내용</th>
                  <th>작성자</th>
                  <th>작성일</th>
                  <th>조회</th>
              </tr>
		
		     
	<%-- <%			
			List<BbsDto> list = (List<BbsDto>)request.getAttribute("list");
			for(BbsDto n : list){
				pageContext.setAttribute("n", n);			
		 %> --%>
			<!-- 5개의 게시글 표현 인덱스 begin="0" 부터 end="4" 까지 -->	
			<c:forEach var="n" items="${list}" begin="0" end="4" >
              <tr>
                  <td data-th="번호">${n.bbsId}</td>                
                  <td data-th="제목" class="letter"><b><a href="bbsview.do?bbsId=${n.bbsId} "><p>${n.bbsTitle}</P></a></b></td>
                  <td data-th="내용" class="letter"><p>${n.bbsContent}</p></td>
                  <td data-th="작성자">${n.id}</td>
                  <td data-th="작성일"><fmt:formatDate pattern="yyyy-MM-dd hh:mm:ss" value="${n.bbsDate}" /></td>
                  <td data-th="조회"><fmt:formatNumber value="${n.bbsHit}"/></td>
              </tr>              
            </c:forEach>
            
			<c:if test="${empty list}">
   				<tr><td colspan="7">현재 해당 게시글은 존재하지 않습니다.</td></tr>
			</c:if>
    	
            </table>
           <!--  <div class="paging">
              <a href="#" class="fa fa-angle-double-left"></a>
              <a href="#" class="fa fa-angle-left"></a>
              <a href="#" class="num active">1</a>
              <a href="#" class="num">2</a>
              <a href="#" class="num">3</a>
              <a href="#" class="fa fa-angle-right"></a>
              <a href="#" class="fa fa-angle-double-right"></a>
            </div>  -->
            
            
            <!-- ===== 페이지처리 ===== -->
            
            <!-- 시작번호 구하기 파라미터 값이 없으면 1 있으면 파라미터 값을 페이지에 담는다 -->
            <c:set var="page" value="${(empty param.p)?1:param.p }" />
            
            <!-- 시작 번호 -->
            <c:set var="startNum" value="${page-(page-1)%5}" />
            
            
            <!-- 마지막 번호 설정 -->
            <c:set var="lastNum" value="${fn:substringBefore(Math.ceil(searchCount/5), '.')}" />
                        
            <div style="margin-top:10px; font-size: 1.2rem;"><span style="color: red;">${(param.p==null)?1:param.p }</span> / ${lastNum} pages</div>
            
            <div class="paging">
                       
            <!-- 이전 페이지 표시 둘중 하나는 보이지 않는다-->
            <c:if test="${startNum>1}">
            	<a href="?p=${startNum-1}&f=${param.f}&q=${param.q}#notice" class="fa fa-angle-left" ></a>
            </c:if>
            <c:if test="${startNum<=1}">
            	<a class="fa fa-angle-left" onclick="alert('이전 페이지가 없습니다')"></a>
            </c:if>
            	
            
            <!-- 페이지 번호 5까지 만들기 -->	
            <c:forEach var="i" begin="0" end="4" >
            	
            <c:if test="${(startNum+i) <= lastNum }" >
           		<a href="?p=${startNum+i}&f=${param.f}&q=${param.q}#notice" class="num ${(page==(startNum+i))?'active':'' }">${startNum+i}</a>
           	</c:if>	
            </c:forEach>
            
            <!-- 다음 페이지 표시 둘중 하나는 보이지 않는다 -->
            <c:if test="${startNum+4<lastNum}">
              	<a href="?p=${startNum+5}&f=${param.f}&q=${param.q}#notice" class="fa fa-angle-right" ></a>
            </c:if>
            <c:if test="${startNum+4>=lastNum}">
              	<a class="fa fa-angle-right" onclick="alert('다음 페이지가 없습니다')"></a>
            </c:if>
              
            </div>
          </div>
        </article>
      </div>
    </section>

    <!-- ===== CONTACT ===== -->
    <section id="contact" >
      <div class="contact container">     
        <div class="contact-title">
          <h2>Contact <span>U</span>s</h2>
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
            <form action="write.do" method="post">
              <div class="row100">
                <div class="col">
                  <div class="inputBox">
                    <input type="text" name="id" required="required" />
                    <span class="text">Name</span>
                    <span class="line"></span>
                  </div>
                </div>
                <div class="col">
                  <div class="inputBox">
                    <input type="text" name="bbsTitle" required="required" />
                    <span class="text">Title</span>
                    <span class="line"></span>
                  </div>s
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
                    <textarea name="bbsContent" required="required"></textarea>
                    <span class="text">Type your message Here...</span>
                    <span class="line"></span>
                  </div>
                </div>
              </div>
              <div class="row100">
                <div class="col">
                  <input type="submit" value="Send" />                  
                </div>
                <div class="col">                  
                  <input type="reset" value="reset" />
                </div>
              </div>            
            </form>
          </div>  
        </article>
      </div>
    </section>

    
    
    <!-- ===== PORTFOLIO ===== -->
    
        
    <!-- ===== FOOTER =====-->     
    <%@ include file="footer.jsp" %>    

    <!-- ===== Top JS ===== -->
    <script src="//code.jquery.com/jquery-3.5.1.min.js"></script>    
    <script src="/resources/script/top.js"></script>

    <!-- ===== PRODUCT SLIDER =====-->
    <script type="text/javascript" src="/resources/script/lightslider.js"></script>
    <script type="text/javascript" src="/resources/script/productslider.js"></script>
        
  </body>
</html>
