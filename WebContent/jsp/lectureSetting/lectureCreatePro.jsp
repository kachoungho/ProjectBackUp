<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>th125 JSP Template</title>
</head>
<body>
	<c:if test="${check == 1 }">
			<meta http-equiv="Refresh" content="0; url=/FirstProject/mainAdminInfo.do">
		<script type="text/javascript">
			alert("강의 개설 성공");
			history.go(1);
		</script>
	</c:if>
</body>
</html>