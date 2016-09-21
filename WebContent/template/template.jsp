<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>템플릿 페이지를 사용한 웹어플리케이션</title>
</head>
<body>
	<center>
		<table width="100%" border="1" cellpading="2" cellspacing="0">
			<tr>
				<td colspan="2">
					<jsp:include page="../module/top.jsp" />
				</td>
			</tr>
			<tr>
				<td width="15%" valign="top">
					<jsp:include page="../module/left.jsp"  flush="false"/>
				</td>
				<td width="85%" valign="top">
					<jsp:include page="${ CONTENT }"/>
				</td>
			</tr>
			<tr align="center">
				<!-- <td width="150" valign="top" align="center">
				 <img src="module/gr_2.gif" border="0"/>
					
				</td> -->
				<td width="600" valign="top" colspan="2">
					<jsp:include page="../module/bottom.jsp"/>
				</td>
			</tr>
		</table>
	</center>
</body>
</html>