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
<c:if test="${result == 1}">
	<% System.out.println("유저 로그인 성공");	%>

	<c:out value="${list.mem_name}"></c:out>
	
	<%-- <meta http-equiv="Refresh" content="0; url=/FirstProject/loginSuc.do?mem_num=${mem_num}&mem_pwd=${mem_pwd}&mem_name=${list.mem_name}&client=${client}"> --%>
	<%-- <c:redirect url="F:/th125/th125_Jsp_servlet/workspace/FirstProject/WebContent/jsp/loginSuc.jsp"/> --%>
</c:if>

<c:if test="${result == 2}">
	<% System.out.println("관리자 로그인 성공");  %>
	<meta http-equiv="Refresh" content="0; url=/FirstProject/loginSuc.do?mem_num=${mem_num}&mem_pwd=${mem_pwd}&mem_name=${list.mem_name}&client=${client}">
	<%-- <c:redirect url="F:/th125/th125_Jsp_servlet/workspace/FirstProject/WebContent/jsp/loginSuc.jsp"/> --%>
</c:if>
<%-- 
<c:if test="${result == -1}">
	<script type="text/javascript">
		alert("학번과 비밀번호를 확인하세요.");
		history.go(-1);
	</script>
	<meta http-equiv="Refresh" content="0; url=jsp/main.jsp">
</c:if> --%>
</body>
</html>