<%@page import="java.sql.Timestamp"%>
<%@page import="com.kysonc.dto.BbsDto"%>
<%@page import="java.util.List"%>
<%@page import="com.kysonc.dao.BbsDao"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>    
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
  </head>
  <body>
  	<c:if test="${loginResult == 1}">
		<script>
			alert("로그인 되었습니다.");
		</script>
	</c:if>
  	<c:if test="${joinResult == 1}">
			<script>
			alert("로그인 되었습니다.");
			</script>
	</c:if>
  	
    <!-- ===== HEADER ===== -->
    <%@ include file="header.jsp" %>

    <!-- ===== MAIN ===== -->      
    <section id="hero">
        <div class="hero container">
          <div>
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
                <h3><a href="#">공지 사항</a></h3>                
              </div>
            </div>          
            <div class="box">
              <div class="text">
                <h3><a href="#">1 : 1 고객 상담</a></h3>                
              </div>
            </div>         
            <div class="box">
              <div class="text">
                <h3><a href="#">관리자</a></h3>                
              </div>
            </div>
          </div>
          
        <%-- 모든 데이터가 저장된 list 가져오기 --%>
		<%
			BbsDao bbsDao = BbsDao.getInstance();
			List<BbsDto> list = bbsDao.selectList();
			
		%>
          <div class="noticelist">
            <table>
              <tr>
                  <th>번호</th>
                  <th>제목</th>
                  <th>내용</th>
                  <th>작성자</th>
                  <th>작성일</th>
                  <th>조회</th>
              </tr>
		<%
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd, hh:mm:ss");
			int count = 0;
			for (BbsDto b : list) {
				String stDate = "";
				Timestamp tDate = b.getBbsDate();
				
				if (tDate != null) {
					stDate = sdf.format(tDate);
				}				
		%>    
		        
              <tr>
                  <td data-th="번호"><%=b.getBbsId() %></td>                
                  <td data-th="제목" class="letter"><b><a href="bbsview.do?bbsId=<%=b.getBbsId() %> "><p><%=b.getBbsTitle() %></P></a></b></td>
                  <td data-th="내용" class="letter"><p><%=b.getBbsContent() %></p></td>
                  <td data-th="작성자"><%=b.getId() %></td>
                  <td data-th="작성일"><%=stDate %></td>
                  <td data-th="조회"><%=b.getBbsHit() %></td>
              </tr>
        <%
				
			count++;
			}
			if (count == 0) {
		%>
				<tr><td colspan="7">작성한 게시글이 없습니다.</td></tr>		
		<%
			}
			System.out.println("현재 게시글 " + count + "개");
		%>                    
            </table>
            <div class="paging">
              <a href="#" class="fa fa-angle-double-left"></a>
              <a href="#" class="fa fa-angle-left"></a>
              <a href="#" class="num active">1</a>
              <a href="#" class="num">2</a>
              <a href="#" class="num">3</a>
              <a href="#" class="fa fa-angle-right"></a>
              <a href="#" class="fa fa-angle-double-right"></a>
            </div>
          </div>
        </article>
      </div>
    </section>

    <!-- ===== CONTACT ===== -->
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
            <form action="write.do" method="post">
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
                    <input type="text" name="bbsTitle" required="required" />
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
    
    

    <!-- ===== SCROLL REVEAL ===== -->
    <script src="/resources/script/main.js"></script>    
  </body>
</html>