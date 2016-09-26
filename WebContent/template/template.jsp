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

	<center>
		<table width="100%" height="100%" border="1" cellpading="2"
			cellspacing="0">
			<tr height="20%">
				<td colspan="2"><jsp:include page="../module/top.jsp" /></td>
			</tr>
			<tr>
				<td height="500px" width="15%" valign="top"><c:if
						test="${ result == 1 }">
						<jsp:include page="../module/left.jsp" flush="false" />
					</c:if> <c:if test="${ result == 2 }">
						<jsp:include page="../module/adminleft.jsp" flush="false" />
					</c:if></td>
				<td width="85%" height="60%" valign="top">
				<jsp:include page="${ CONTENT }" /> <br> <br></td>
			</tr>
			<tr height="20%" align="center">
				<!-- <td width="150" valign="top" align="center">
				 <img src="module/gr_2.gif" border="0"/>
					
				</td> -->
				<td width="600" valign="top" colspan="2"><jsp:include
						page="../module/bottom.jsp" /></td>
			</tr>
		</table>
	</center>
</body>
</html>