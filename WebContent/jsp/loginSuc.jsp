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
	font-family: 'Montserrat', 'Noto-Sans', sans-serif;
	border: 3px solid white;
	color: #fff;
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
	background-image: url(jsp/images/IU1.jpg);
	background-size: cover;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body><!-- background="images/gr18.jpg" -->
	<div class="main-overlay">
		<form name="mainForm" action="" method="post">
			<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
			<table border="0" align="center">
				<tr>
				<td colspan="4">
				<font color="white">${ client } 접속중</font><br>
				<font color="white">${ stu_num } 님 로그인 완료</font><br>
				<font color="white">패스워드 : ${ stu_pwd }</font></td>
				</tr>
				<br>
				<tr align="center">
					<td><input type="button" value="홈페이지"
						onclick="document.location.href=''"></td>
					<td></td>
					<td></td>
					<td><input type="button" value="종합 정보 시스템"
						onclick="document.location.href='/FirstProject/info.do'"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>