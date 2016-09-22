<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

<style type="text/css">
html, body {
	width: 100%;
	height: 100%;
	margin: 0;
	padding: 0;
}

#main {
	position: absolute;
	width: 100%;
	height: 100%;
	margin: 0;
	padding: 0;
	text-align: center;
	background-image: url(images/gr18.jpg) no-repeat center center fixed;
	background-size: cover;
}

#main .main-letter {
	position: relative;
	width: auto;
	height: 120px;
	top: 50%;
	margin-top: -120px;
	font-family: 'Montserrat', 'Noto-Sans', sans-serif;
	/*padding: 160px 0 20px 0;*/
	color: white;
	font-size: 46px;
	font-weight: 600;
	z-index: 20;
}

.btn-default {
	display: block;
	margin: 0 auto;
	width: 100px;
	height: 20px;
	line-height: 20px;
	/* font-family: 'Montserrat', 'Noto-Sans', sans-serif; */
	font-family: '1훈고딕굴림';'
	border: 3px solid white;
	color: black;
	font-size: 20px;
	padding: 12px 18px;
	text-decoration: none;
	margin-top: 10px;
	z-index: 10;
}

.main-overlay {
	position: absolute;
	width: 100%;
	height: 100%;
	z-index: 5;
	background-image: url(jsp/images/background.png);
	background-size: cover;
	font-family: '1훈고딕굴림';'
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body><!-- background="images/gr18.jpg" -->
	<div class="main-overlay">
		<form name="mainForm2" action="" method="post">
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
			<table id="table1" align="center">
				<tr>
					<td align="left" font="30px"><font color="black">${ mem_name } 님 접속중</font></td>
				</tr>
			</table>

			<table align="center">
			<br>
				<tr align="center" >
					<td>
						<a class="btn btn-default" href="#" >홈페이지</a>	
					</td>
					<td width="200">
						<a class="btn btn-default" href="" onclick="javascript:alert('\n권한이 없습니다\n\n로그인 후 사용해주세요\n')">종합 정보 시스템</a>
					</td>
				</tr>
			</table>
		</form>
	</div>
		</form>
	</div>
</body>
</html>