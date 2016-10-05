<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

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

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>템플릿 페이지를 사용한 웹어플리케이션</title>
</head>
<body onLoad="pagestart()">
	<div class="main-overlay">
		<center>
			<table width="100%" border="0" height="100%" cellpading="2"
				cellspacing="0">
				<tr>
					<td width="100%" valign="top" colspan="3">
						<img width="100%" src="/FirstProject/jsp/images/back2.png"></td>
				</tr>
				
				<tr>
					<td width="33%"></td>
					<td width="34%" valign="top" align="center">
						<img src="/FirstProject/jsp/images/icons.png">
					</td>
					<td width="33%"></td>
				</tr>
				
				<tr height="300" align="center">
					<td width="600" valign="top" colspan="3"><jsp:include
							page="${ CONTENT }" /></td>
				</tr>
				<tr>
					<td width="100%" valign="top" colspan="3">
						<img width="100%" src="/FirstProject/jsp/images/back2.png"></td>
				</tr>
			</table>
		</center>
	</div>
</body>
</html>