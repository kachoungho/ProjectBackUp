<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

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
					<br><br><br><br>
						<img src="/FirstProject/jsp/images/icon2.png">
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