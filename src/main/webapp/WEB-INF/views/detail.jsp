	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style type="text/css">
body {
	padding-top: 70px;
	padding-bottom: 70px;
}
.d1{
	position:absolute;
	height: 500px;
	width: 300px;
	right :10;
	top:20;
}
.d2{
	position:absolute;
	width: 500px;
	top:20;
	left:220px;
}
.d3{
	position:absolute;
	right :0%;
	height: 500px;
	width: 200px;
	top:20;
	left:750px;


}
.d4{
	background-color :activeborder aqua;
	position:absolute;
	width: 500px;
	top:540px;
	left:220px;
	border: activeborder 1px  #73AD21;

}

nav {
	position: relative;
	left: 0;
	width: 100%;
	height: 50px;
}

nav>ul {
	margin: 0 auto;
	width: 940px;
	list-style: none;
}

nav>ul>li {
	float: left;
}

nav>ul>li>a {
	display: block;
	margin-right: 20px;
	width: 140px;
	font-size: 16px;
	font-weight: bold;
	line-height: 44px;
	text-align: center;
	text-decoration: none;
	color: #777;
}

nav>ul>li a:hover {
	color: #fff;
}

nav>ul>li.selected a {
	color: #fff;
}

nav>ul>li.subscribe a {
	margin-left: 22px;
	padding-left: 33px;
	text-align: left;
}

.logoimg {
	float: left;
	margin-right: 20px;
	margin-top: 20px;
	clear: both;
}
</style>
</head>
<body>
	<!-- 여기가 툴바(네비게이션 바) -->
	<div class="container">
		<!-- nav: 네비게이션 시작을 알리는 태그. navbar navbar-default: 배경색상과 테두리 지정해 주는 역할
		 navbar-fixed-top: 화면 상단에 고정 -->
		<nav class="navbar navbar-default navbar-fixed-top navbar"
			role="navigation">
			<div class="container">
				<div class="navbar-header">
					<!-- navbar-toggle: 화면 사이즈가 크면 안보임 -->
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-ex1-collapse">
						<span class="sr-only">toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<!-- class="navbar-header" -->

				<!-- navbar-collapse: 화면 사이즈가 작으면 안보임 -->
				<c:if test="${ not empty id }">
				${id }님, 환영합니다.
				<a href ="logout.food" name ="id" >로그아웃</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href ="myPage.food" name = "mp">마이페이지</a>
				</c:if>
					<c:if test="${ empty id }">
						<div class="collapse navbar-collapse navbar-right navbar-ex1-collapse">
						<a href="login.food" method="post">
						<button type="button" class="btn btn-primary btn-lg">Log in</button>
					</a>
				</div>
				</c:if>
				<div class="collapse navbar-collapse navbar-right navbar-ex1-collapse">
					<form method="post" action = "search.food" class="navbar-form navbar" role="search">
						<select name="condition">
							<option value="name">상품명</option>
							<option value="material">영양성분</option>
						</select> 
						<input type="text" name="word"> 
						<button type="submit" value="검색" class="btn btn-danger">검색</button>
					</form>
				</div>
			</div>
		</nav>
		
			<div>
				<a href="list.food"><img src="resources/img/logo.jpg" alt="logo" width="100" class="logoimg"></a>
				<h1 style="text-align:center">상세정보&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h1>
			</div>
		<nav>
			<ul>
				<li><a href="listNotice.food">공지사항</a></li>
				<li><a href="product.food">상품정보</a></li>
				<li><a href="bestProduct.food">베스트 상품 정보</a></li>
				<li><a href="mymenu.food">내 식단</a></li>
				<li><a href="#">영양 섭취 정보</a></li>
			</ul>
		</nav>

		<br>
		
	</div>
	<div>
	<div class="d1" >
		<br><br>
		<h1>제품 이미지</h1>
		<br><br>
		<img src="resources/${f.img}" alt="" width="200">
		<br>
		<label>제조사 : ${f.maker }</label><br>
		<label>제품명 : ${f.name }</label><br>
		<label>${id} 님의</label><br>
		<label>알러지 유발 성분 : 무&nbsp;</label> <img src="resources/img/좋음.JPG" alt="" width="50">
		<br>
		<br><br>
		<br><a href="product.food"><button style="float: left;" class="btn btn-primary">돌아가기</button></a>
		<a href="mylistaddproduct.food?code=${f.code }"><button style="float: left;"  class="btn btn-primary">내식단에 추가</button></a>
		
	</div>
	
	
	
	<div class="d2">
	<%@ include file = "graph.jsp" %>
	</div>
	<div class="d4">
	<h1>원재료</h1>
	${f.material }
	</div>	
	
	<div class="d3">
		<br><br>
		<br>
		<h1>영양성분</h1><br><br><br>
		<label>상품 정보 총 용량 : ${f.supportpereat } g</label><br>
		<label>칼로리 : ${f.calory } cal</label><br>
		<label>탄수화물 : ${f.carbo }</label><br> 
		<label>단백질 : ${f.protein }</label><br> 
	    <label>지방 : ${f.fat }</label><br> 	
	    <label>당류 : ${f.sugar }</label><br> 
	    <label>나트륨 : ${f.natrium }</label><br>
	    <label>콜레스테롤 : ${f.chole }</label><br>
	    <label>포화 지방산 : ${f.fattyacid }</label><br>
	    <label>트랜스 지방 : ${f.transfat }</label><br>
	</div>
	
	</div>

	
</body>
</html>