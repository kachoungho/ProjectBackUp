<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="text/css"> -->
<link href="https://fonts.googleapis.com/css?family=Righteous" rel="stylesheet" type=text/css">
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
	/* color: white; */
	color: black;
	font-size: 46px;
	font-weight: 600;
	z-index: 20;
}

.btn-default {
	display: block;
	margin: 0 auto;
	width: 150px;
	height: 20px;
	line-height: 20px;
	/* font-family: 'Montserrat', 'Noto-Sans', sans-serif; */
	/* border: 3px solid white; */
	border: 2px solid #1E3449;
	/* color: #fff; */
	font-family: '1훈고딕굴림';'
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
	background-image: url(images/background.png);
	background-size: cover;	
	font-family: '1훈고딕굴림';'
}

#table1 {
	display: block;
	margin: 0 auto;
	width: 420px;
	height: 150px;
	line-height: 20px;
	border: 2px solid #1E3449;
}

.m-t-10 {
	display:block;
	margin-top:15px; 
}
</style>

<!-- <link href="../css/style.css" rel="stylesheet" type=text/css"> -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>th125 JSP Template</title>
</head>
<body background="jsp/images/background.png" Style="background-size:cover; ">
	<div class="main-overlay"  ><!-- style="background-color: rgba(0, 0, 0, 0.5);" -->
		<!--  -->
		<form name="mainForm" action="/FirstProject/login.do" method="post">
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
			<table id="table1" align="center">
				<tr>
					<td align="left" font="30px"><font color="black">학 번</font></td>
				</tr>
				<tr>
					<td><input type="text" style="width: 400px;" name="stu_num"></td>
				</tr>
				<tr>
					<td class="m-t-10" align="left"><font color="black">비밀번호 password</font>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="" style="color: black">비밀번호 찾기</a>
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

			<table align="center">
			<br>
				<tr align="center" >
					<td>
						<a class="btn btn-default" href="" onclick="javascript:alert('\n권한이 없습니다\n\n로그인 후 사용해주세요\n')">홈페이지</a>	
					</td>
					<td width="200">
						<a class="btn btn-default" href="" onclick="javascript:alert('\n권한이 없습니다\n\n로그인 후 사용해주세요\n')">종합 정보 시스템</a>
					</td>
					<!-- <input type="button" value="홈페이지"
							onclick="javascript:alert('\n권한이 없습니다\n\n로그인 후 사용해주세요\n')"></td>
					<td> </td><td> </td>
					<td><input type="button" value="종합 정보 시스템"
							onclick="javascript:alert('\n권한이 없습니다\n\n로그인 후 사용해주세요\n')"></td> -->
				</tr>
			</table>
		</form>
	</div>
</body>
</html>