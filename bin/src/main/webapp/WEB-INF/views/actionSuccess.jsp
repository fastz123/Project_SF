<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

.aa {
	width: 45%;
	text-align: center;
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
	background: url("img/rss.png") left center no-repeat;
}

.logoimg {
	float: left;
	margin-right: 20px;
	margin-top: 20px;
	clear: both;
}
#ssd {
	padding-left:150px;
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
				<!-- navbar-collapse: 화면 사이즈가 작으면 안보임 -->
				<c:if test="${ not empty id }">
				${id }님, 환영합니다.
				<a href ="logout.food" name ="id" >로그아웃</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href ="myPage.food?id=${ id }" name = "mp">마이페이지</a>
			
				</c:if>
					<c:if test="${ empty id }">
						<div class="collapse navbar-collapse navbar-right navbar-ex1-collapse">
						<a href="login.food" method="post">
						<button type="button" class="btn btn-primary btn-lg">Log in</button>
					</a>
				</div>
				</c:if>
				<div
					class="collapse navbar-collapse navbar-right navbar-ex1-collapse">
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
		<br><br><br><br><br><br><br><br><br><br><br><br><br>
		<h1>${msg }</h1>
		<br><br>
		<a href="list.food"><button type="button" class="btn btn-secondary btn-primary">돌아가기</button></a>
		
		
</body>
</html>