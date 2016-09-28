<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<c:if test="${ check == 1 }">
	<meta http-equiv="Refresh"  content="0; url=/FirstProject/BasicEditSuc.do?mem_num=${mem_num}" >
</c:if>

<c:if test="${ check == 0 }">		
	<script type="text/javascript">
	
	</script>		
</c:if>


</body>
</html>