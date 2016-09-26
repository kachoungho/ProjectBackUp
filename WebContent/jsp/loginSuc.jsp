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
	background-image: url(jsp/images/background.png);
	background-size: cover;	
	font-family: '1훈고딕굴림';'
}
.m-t-10 {
	display:block;
	margin-top:15px; 
}
</style>

<script language="JavaScript">
	function pagestart() {
		window.setTimeout("pagereload()", 1800000); /* 60000 이 1분  */
	}
	function pagereload() {
		location.reload();
		alert("로그인 시간이 만료되어 로그아웃 되었습니다.");
		history.go(1);
	}
</script>


<c:if test="${sessionScope.mem_name == null}">
	<meta http-equiv="Refresh" content="0; url=/FirstProject/jsp/main.jsp">
</c:if>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body  onLoad="pagestart()"><!-- background="images/gr18.jpg" -->
	<div class="main-overlay">
		<form name="mainForm2" action="" method="post">
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
			<table  align="center">
				<tr align="center">
					<td align="center" font="30px"><font color="black">${sessionScope.mem_name} 님 접속중</font></td>
					<td><input type="button" value="로그아웃" onclick="document.location.href='/FirstProject/logout.do'"></td>
				</tr>
			</table>

			<table align="center">
			<br>
				<tr align="center" >
					<td>
						<a class="btn btn-default" href="#" >홈페이지</a>	
					</td>
					<td width="200">
						<c:if test="${result == 1}">
							<a class="btn btn-default" href="info.do">종합 정보 시스템</a>
						</c:if>
						<c:if test="${result == 2}">
							<%-- <a class="btn btn-default" href="adminInfo.do?mem_num=${mem_num}&mem_name=${sessionScope.mem_name}&result=${sessionScope.result}">종합 정보 시스템</a> --%>
							<a class="btn btn-default" href="adminInfo.do">종합 정보 시스템</a>
						</c:if>
						
					</td>
				</tr>
			</table>
		</form>
	</div>
		</form>
	</div>
</body>
</html>