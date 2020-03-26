<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
					<form method="post" action = "product2.food" class="navbar-form navbar" role="search">
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
		<a href="main.food"><button type="button" class="btn btn-secondary btn-primary">돌아가기</button></a>
		
		
</body>
</html>