<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="layout.css">
<title>Insert title here</title>

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
	width: 30%;
}

.div_box {
	position: absolute;
	top: 35%;
	left: 35%;
	margin: -50px 0 0 -50px;
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
	background: url("resources/img/rss.png") left center no-repeat;
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
<a href="logout.food" name="id">로그아웃</a>
					<br>
				</c:if>
				<c:if test="${ empty id }">
					<div
						class="collapse navbar-collapse navbar-right navbar-ex1-collapse">
						<a href="login.food" method="post">
							<button type="button" class="btn btn-primary btn-lg">Login</button>
						</a>
					</div>
				</c:if>
				<div
					class="collapse navbar-collapse navbar-right navbar-ex1-collapse">
					<form action="find.html" class="navbar-form navbar" role="search">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="검색">
						</div>
						<button type="submit" class="btn btn-danger">검색</button>
					</form>
				</div>
			</div>
		</nav>

		<div>
			<a href="main.food"><img src="resources/img/logo.jpg" alt="logo"
				width="100" class="logoimg"></a>
			<h1 style="text-align: center">회 원 가 입</h1>
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


		<div class="aa div_box">
			<form action="insert.food" method="post"
				class="text-center form-signin">
				<p style="text-align: left">아이디</p>
				<label for="inputID" class="sr-only">ID</label> <input type="text"
					name="id" id="inputPasswordco" class="form-control"
					placeholder="ID" required> <br>
				<p style="text-align: left">비밀번호</p>
				<label for="inputPassword" class="sr-only">Password</label> <input
					type="password" name="pass" id="inputPassword" class="form-control"
					placeholder="Password" required> <br>
				<p style="text-align: left">비밀번호 확인</p>
				<label for="inputPasswordco" class="sr-only">Password</label> <input
					type="password" id="inputPassword" class="form-control"
					placeholder="Password" required> <br>
				<p style="text-align: left">이름</p>
				<label for="Name" class="sr-only">name</label> <input type="text"
					name="name" class="form-control" id="Name" placeholder="Name"
					required> <br>
				<p style="text-align: left">E-mail</p>
				<label for="inputEmail" class="sr-only">email</label> <input
					type="email" name="email" id="inputEmail" class="form-control"
					placeholder="email" required autofocus> <br>
				<p style="text-align: left">알레르기 정보</p>
				<fieldset>
					<input type="checkbox" name="d" value="대두" id="d1" /><label>대두</label>
					<input type="checkbox" name="d" value="땅콩" id="d2" /><label>땅콩</label>
					<input type="checkbox" name="d" value="우유" id="d3" /><label>우유</label>
					<input type="checkbox" name="d" value="게" id="d4" /><label>게</label>
					<input type="checkbox" name="d" value="새우" id="d5" /><label>새우</label>
					<input type="checkbox" name="d" value="참치" id="d6" /><label>참치</label>
					<input type="checkbox" name="d" value="연어" id="d7" /><label>연어</label>
					<input type="checkbox" name="d" value="소고기" id="d8" /><label>소고기</label>
					<br> <input type="checkbox" name="d" value="닭고기" id="d9" /><label>닭고기</label>
					<input type="checkbox" name="d" value="돼지고기" id="d10" /><label>돼지고기</label>
					<input type="checkbox" name="d" value="복숭아" id="d11" /><label>복숭아</label>
					<input type="checkbox" name="d" value="민들레" id="d12" /><label>민들레</label>
					<input type="checkbox" name="d" value="계란흰자" id="d13" /><label>계란흰자</label>
					<input type="checkbox" name="d" value="쑥" id="d14" /><label>쑥</label>

				</fieldset>
				<br> <input type="submit" value="회원가입">
			</form>

			<form action="list.food" method="post">
				<input type="submit" value="돌아가기">
			</form>

		</div>
	</div>

</body>
</html>