<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css"
	href="/FirstProject/css/style.css">
<table width="100%">
	<tr>
		<td rowspan="3">
			<c:if test="${result==1 }">
				<a href="/FirstProject/info.do"><img
					src="/FirstProject/jsp/images/logo.png"></a>
			</c:if>
			<c:if test="${result==2 }">
				<a href="/FirstProject/adminInfo.do"><img
					src="/FirstProject/jsp/images/logo.png"></a>
			</c:if>
			<c:if test="${result==3 }">
				<a href="/FirstProject/mainAdminInfo.do"><img
					src="/FirstProject/jsp/images/logo.png"></a>
			</c:if>
		</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td align="right" class="font3">${sessionScope.mem_name}님접속중</td>
	</tr>
	<tr>
		<td align="right" class="font3"><input type="button" class="css_btn_class"  value="로그아웃"
			onclick="document.location.href='/FirstProject/logout.do'"></td>
	</tr>

</table>
<c:if test="${sessionScope.mem_name == null}">
	<meta http-equiv="Refresh" content="0; url=/FirstProject/jsp/main.jsp">
</c:if>
