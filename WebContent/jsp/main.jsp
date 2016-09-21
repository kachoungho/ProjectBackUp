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
	background-image: url(images/IU1.jpg);
	background-size: cover;
}

</style>

<!-- <link href="../css/style.css" rel="stylesheet" type=text/css"> -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>th125 JSP Template</title>
</head>
<body background="jsp/images/IU1.jpg" Style="background-size:cover">
	<div class="main-overlay"  ><!-- style="background-color: rgba(0, 0, 0, 0.5);" -->
		<!--  -->
		<form name="mainForm" action="/FirstProject/login.do" method="post">
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
			<table border="1" align="center">
				<tr>
					<td align="left" font="30px"><font color="white">학 번</font></td>
				</tr>
				<tr>
					<td><input type="text" style="width: 400px;" name="stu_num"></td>
				</tr>
				<tr>
					<td align="left"><font color="white">비밀번호</font>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="" style="color: white">비밀번호 찾기</a>
					</td>
				</tr>
				<tr>
					<td><input type="password" style="width: 400px;"
						name="stu_pwd"></td>
				</tr>
				<tr>
					<td align="center"><input type="submit"
						style="width: 400px; height: 30px" value="로그인"></td>
				</tr>
			</table>

			<table border="0" align="center">
			<br>
			<tr align="center">
				<td><input type="button" value="홈페이지"
						onclick="javascript:alert('\n권한이 없습니다\n\n로그인 후 사용해주세요\n')"></td>
				<td> </td><td> </td>
				<td><input type="button" value="종합 정보 시스템"
						onclick="javascript:alert('\n권한이 없습니다\n\n로그인 후 사용해주세요\n')"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>