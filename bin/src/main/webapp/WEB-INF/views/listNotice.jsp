<%@ page contentType="text/html;charset=euc-kr"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
	padding-left: 150px;
}
</style>
</head>
<body>
	<!-- ���Ⱑ ����(�׺���̼� ��) -->
	<div class="container">
		<!-- nav: �׺���̼� ������ �˸��� �±�. navbar navbar-default: ������� �׵θ� ������ �ִ� ����
		 navbar-fixed-top: ȭ�� ��ܿ� ���� -->
		<nav class="navbar navbar-default navbar-fixed-top navbar"
			role="navigation">
			<div class="container">
				<div class="navbar-header">
					<!-- navbar-toggle: ȭ�� ����� ũ�� �Ⱥ��� -->
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-ex1-collapse">
						<span class="sr-only">toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<!-- class="navbar-header" -->

				<!-- navbar-collapse: ȭ�� ����� ������ �Ⱥ��� -->
				<!-- navbar-collapse: ȭ�� ����� ������ �Ⱥ��� -->
				<c:if test="${ not empty id }">
				${id }��, ȯ���մϴ�.
				<a href="logout.food" name="id">�α׾ƿ�</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="myPage.food?=${ id }" name="mp">����������</a>

				</c:if>
				<c:if test="${ empty id }">
					<div
						class="collapse navbar-collapse navbar-right navbar-ex1-collapse">
						<a href="reg.food" method="post">
							<button type="button" class="btn btn-primary btn-lg">join</button>
						</a>
					</div>
					<div
						class="collapse navbar-collapse navbar-right navbar-ex1-collapse">
						<a href="login.food" method="post">
							<button type="button" class="btn btn-primary btn-lg">Login</button>
						</a>
					</div>
				</c:if>
				<div
					class="collapse navbar-collapse navbar-right navbar-ex1-collapse">
					<form method="post" action="search.food" class="navbar-form navbar"
						role="search">
						<select name="condition">
							<option value="name">��ǰ��</option>
							<option value="material">���缺��</option>
						</select> <input type="text" name="word">
						<button type="submit" value="�˻�" class="btn btn-danger">�˻�</button>
					</form>
				</div>
			</div>
		</nav>

		<div>
			<a href="list.food"><img src="resources/img/logo.jpg" alt="logo"
				width="100" class="logoimg"></a>
			<h1 style="text-align: center">Ssafy ��ǰ
				��������&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h1>
		</div>
		<nav>
			<ul>
				<li><a href="listNotice.food">��������</a></li>
				<li><a href="product.food">��ǰ����</a></li>
				<li><a href="bestProduct.food">����Ʈ ��ǰ ����</a></li>
				<li><a href="mymenu.food">�� �Ĵ�</a></li>
				<li><a href="#">���� ���� ����</a></li>
			</ul>
		</nav>

		<!-- <div class="container" id="ssd">
			<a href="allergyPriorityView.food"><button>
					<h3>ȸ�� �˷��� �������</h3>
				</button></a>
		</div> -->
		<center>
			<h1>��������</h1>
			<form method="post" action="search.bod">
				<select name="search">
					<option value="name">�۾���</option>
					<option value="title">����</option>
				</select> <input type="text" name="searchtext" /> <input type="submit"
					value="�˻�" />
			</form>

			<TABLE BORDER=1 CELLSPACING=1 CELLPADDING=1>
				<TR>
					<th width=100 bgcolor=#113366><font color=#ffffee size=2>NUM</th>
					<th width=200 bgcolor=#113366><font color=#ffffee size=2>PASS</th>
					<th width=100 bgcolor=#113366><font color=#ffffee size=2>NAME</th>
					<th width=150 bgcolor=#113366><font color=#ffffee size=2>WDATE</th>
					<th width=100 bgcolor=#113366><font color=#ffffee size=2>TITLE</th>
					<th width=100 bgcolor=#113366><font color=#ffffee size=2>CONTENT</th>
					<th width=100 bgcolor=#113366><font color=#ffffee size=2>COUNT</th>


					<c:forEach var="row" items="${list}">
						<tr bgcolor=white>

							<td align=center bgcolor=white>&nbsp;<font size=2> <a
									href="detailNotice.food?num=${row.num }">${row.num }</a></td>

							<td align=center bgcolor=white>&nbsp;<font size=2>${row.pass }</td>

							<td align=center bgcolor=white>&nbsp;<font size=2>${row.name }</td>

							<td align=center bgcolor=white>&nbsp;<font size=2>${row.wdate }</td>

							<td align=center bgcolor=white>&nbsp;<font size=2>${row.title }</td>


							<td align=center bgcolor=white>&nbsp;<font size=2>${row.content }</td>

							<td align=center bgcolor=white>&nbsp;<font size=2>${row.count }</td>
						</tr>
					</c:forEach>
			</table>
			<br></br> <a href=insertNoticeForm.food>���۾���</a>
</body>
</html>
