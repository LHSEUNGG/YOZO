<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%
	response.setContentType("text/html charset=UTF-8");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>굿즈 목록</title>
</head>

<style type="text/css">
section {
	height: 600px;
}

#title {
	font-size: 25px;
	text-align: center;
	margin-top: 15px;
	font-weight: bold;
}

.btn {
	width: 70px;
	height: 35px;
	background-color: #F5A9A9;
	color: #FAFAFA;
	border: 0;
	outline: 0;
	border-radius: 0.35em;
	font-weight: bold;
	cursor: pointer;
}

#btns {
	text-align: right;
	margin-right: 50px;
}

/* 리스트 상품들 */
* {
	position: relative;
	margin: 0;
	padding: 0;
	text-decoration: none;
	font-family: "montserrat";
}


.card {
	width: 360px;
	background-color: #C6FF70;
	position: absolute;
	top: 50%;
	left: 25%;
	transform: translate(-50%, -50%);
}

.card2 {
	width: 360px;
	background-color: #C6FF70;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

.card3 {
	width: 360px;
	background-color: #C6FF70;
	position: absolute;
	top: 50%;
	left: 75%;
	transform: translate(-50%, -50%);
}

.card4 {
	width: 360px;
	background-color: #C6FF70;
	position: absolute;
	top: 100%;
	left: 25%;
	transform: translate(-50%, -50%);
}

.top-section {
	height: 310px;
	overflow: hidden;
	background: #fff;
	position: relative;
}

#image-container {
	width: 360px;
	height: 240px
}

.nav img {
	width: 80px;
	height: 50px;
	border: 1px solid #ddd;
	margin: 8px 2px;
	cursor: pointer;
	transition: 0.3s;
}

.nav img:hover {
	border-color: #52E252;
}

.price {
	position: absolute;
	top: 20px;
	right: 20px;
	color: #27058C;
	font-size: 24px;
}

.product-info {
	padding: 24px;
}

.name {
	text-transform: uppercase;
	font-size: 24px;
	color: #333;
}

.dis {
	font-size: 16px;
	opacity: 0.7;
}

.btn_basket {
	display: block;
	background-color: #CBB679;
	text-align: center;
	color: #fff;
	padding: 10px;
	transition: 0.3s;
}

.btn_basket:hover {
	background: #333;
}

.goods_list{
	border: 1px solid black;
}
#warning{
	width: 100px;
	height :100px;
	vertical-align: middle;
}
#message{
	display : inline-block;
	vertical-align: middle;
}
</style>

<%@ include file="../../form/header.jsp" %>

<body>
<section>
<div class="goods_list">
	<!--썸네일 / 제목 / 가격 / 장바구니담기버튼 -->

	<c:choose>
		<c:when test="${empty list }">
			<div>
			<img id="warning" alt="warning" src="../../img/warning.jpg">
			<h1 id="message">등록된 상품이 존재하지 않습니다.</h1>
			</div>
		</c:when>
		
		<c:otherwise>
			<forEach items="${list }" var ="dto">
			<div class="tablewrapper">
		<table>
				<tr>
					<td>${dto.goods_photo }</td>
				</tr>
				<tr>
					<td>${dto.goods_title }</td>
				</tr>
				<tr>
					<td>${dto.goods_price }</td>
				</tr>
				<tr>
					<td>
						<input type="button" value="장바구니 담기"/>
					</td>
				</tr>
		</table>
			
			
				
			</div>
			</forEach>
			
		</c:otherwise>
	</c:choose>
	
</div>
</section>
<%-- 병욱오빠가 만드신 html
	<main>
		<section>
			<div id="btns">
				<input class="btn" type="button" value="등록" onclick="location.href='<%request.getContextPath(); %>/YORIZORI/goods.do?command=goodsinsertform'"/> 
				<input class="btn" type="button" value="삭제" />
			</div>
		
			<h2>제품보기</h2>
			<div class="card">

				<div class="top-section">
					<img id="image-container" alt="" src="img/goods1.jpg">
					<div class="nav">
						<!-- onclick 하면 change_img()함수가 실행된다. -->
						<img alt="" src="img/goods2.png" onclick="change_img(this)">
						<img alt="" src="img/goods3.png" onclick="change_img(this)">
						<img alt="" src="img/goods4.png" onclick="change_img(this)">
					</div>
					<div class="price">52,000 WON</div>
				</div>


				<div class="product-info">
					<div class="name">YORIZORI 도마</div>
					<div class="dis">'MUST HAVE' kitchen tools</div>
					<!-- 장바구니 담기 링크 -->
					<a class="btn_basket" href="#">장바구니에 담기</a>
				</div>

			</div>

			<div class="card2">

				<div class="top-section">
					<img id="image-container" alt="" src="img/goods1.jpg">
					<div class="nav">
						<!-- onclick 하면 change_img()함수가 실행된다. -->
						<img alt="" src="img/goods2.png" onclick="change_img(this)">
						<img alt="" src="img/goods3.png" onclick="change_img(this)">
						<img alt="" src="img/goods4.png" onclick="change_img(this)">
					</div>
					<div class="price">52,000 WON</div>
				</div>


				<div class="product-info">
					<div class="name">YORIZORI 도마</div>
					<div class="dis">'MUST HAVE' kitchen tools</div>
					<!-- 장바구니 담기 링크 -->
					<a class="btn_basket" href="#">장바구니에 담기</a>
				</div>

			</div>

			<div class="card3">

				<div class="top-section">
					<img id="image-container" alt="" src="img/goods1.jpg">
					<div class="nav">
						<!-- onclick 하면 change_img()함수가 실행된다. -->
						<img alt="" src="img/goods2.png" onclick="change_img(this)">
						<img alt="" src="img/goods3.png" onclick="change_img(this)">
						<img alt="" src="img/goods4.png" onclick="change_img(this)">
					</div>
					<div class="price">52,000 WON</div>
				</div>


				<div class="product-info">
					<div class="name">YORIZORI 도마</div>
					<div class="dis">'MUST HAVE' kitchen tools</div>
					<!-- 장바구니 담기 링크 -->
					<a class="btn_basket" href="#">장바구니에 담기</a>
				</div>

			</div>

			<div class="card4">

				<div class="top-section">
					<img id="image-container" alt="" src="img/goods1.jpg">
					<div class="nav">
						<!-- onclick 하면 change_img()함수가 실행된다. -->
						<img alt="" src="img/goods2.png" onclick="change_img(this)">
						<img alt="" src="img/goods3.png" onclick="change_img(this)">
						<img alt="" src="img/goods4.png" onclick="change_img(this)">
					</div>
					<div class="price">52,000 WON</div>
				</div>


				<div class="product-info">
					<div class="name">YORIZORI 도마</div>
					<div class="dis">'MUST HAVE' kitchen tools</div>
					<!-- 장바구니 담기 링크 -->
					<a class="btn_basket" href="#">장바구니에 담기</a>
				</div>

			</div>
			



			<script type="text/javascript">
				/* 체크 */
				var container = document.getElementById("image-container");
				function change_img(image) {
					container.src = image.src;
				}
			</script>

		</section>
	</main> --%>
	<!-- 푸터 -->
<%@ include file="../../form/footer.jsp" %>
</body>
</html>