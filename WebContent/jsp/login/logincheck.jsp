<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
<c:if test="${result == 1 }">
	<% System.out.println("유저 로그인 성공");%>
	<c:forEach var="mem_name" items="${ mem_name }">
		<meta http-equiv="Refresh" content="0; url=/FirstProject/loginSuc.do?result=${result}">
	</c:forEach>
	<script type="text/javascript">
		alert("로그인 성공");
		history.go(1);
	</script>
</c:if>

<c:if test="${result == 2}">
	<% System.out.println("관리자 로그인 성공");  %>
	<c:forEach var="mem_name" items="${ mem_name }">
		<meta http-equiv="Refresh" content="0; url=/FirstProject/loginSuc.do?result=${result}">
	</c:forEach>
	<script type="text/javascript">
		alert("관리자 로그인 성공");
		history.go(1);
	</script>
</c:if>

<c:if test="${result == 3}">
	<% System.out.println("총 관리자 로그인 성공");  %>
	<c:forEach var="mem_name" items="${ mem_name }">
		<meta http-equiv="Refresh" content="0; url=/FirstProject/loginSuc.do?result=${result}">
	</c:forEach>
	<script type="text/javascript">
		alert("총 관리자 로그인 성공");
		history.go(1);
	</script>
</c:if>

</body>
</html>