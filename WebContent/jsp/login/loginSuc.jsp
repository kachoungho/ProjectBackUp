<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="/FirstProject/css/style.css">

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
<body onLoad="pagestart()">
	<br><br><br>
	<form name="mainForm2" action="" method="post">
		<table align="center">
			<tr align="center">
				<td id="font" align="center">${sessionScope.mem_name}님
					접속중&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="font"
					type="button" value="로그아웃"
					onclick="document.location.href='/FirstProject/logout.do'">
				</td>

			</tr>
		</table>
		<table align="center">
			<tr align="center">
				<td><a class="btn btn-default" href="#">홈페이지</a></td>
				<td width="200"><c:if test="${result == 1}">
						<a class="btn btn-default" href="info.do">종합 정보 시스템</a>
					</c:if> <c:if test="${result == 2}">
						<a class="btn btn-default" href="adminInfo.do">종합 정보 시스템</a>
					</c:if> <c:if test="${result == 3}">
						<a class="btn btn-default" href="mainAdminInfo.do">종합 정보 시스템</a>
					</c:if></td>
			</tr>
		</table>
	</form>
	
</body>
</html>