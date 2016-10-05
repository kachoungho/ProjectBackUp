<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="/FirstProject/css/style.css">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${check == 0 }">
		<script type="text/javascript">
			alert("본인 확인 성공");
		</script>
	</c:if>
	<c:if test="${check == 1 }">
	<meta http-equiv="Refresh"
				content="0; url=/FirstProject/pwdFind.do">
		<script type="text/javascript">
			alert("본인 확인 실패 ");
		</script>
	</c:if>
		<form >
		<table id="th" align="center">
			<td id="th2"><b>비밀 번호 찾기 결과</b></td>
		</table>
		<br><br>
		
			<table width="80%">
				<tr height="30">
					<td id="th" width="100">학(사)번</td>
					<td id="th2"><c:out value="${vo.mem_num}"/></td>
				</tr>
				<tr height="30">
					<td id="th" width="100">성 명</td>
					<td id="th2"><c:out value="${vo.mem_name}"/></td>
					</td>
				</tr>
				<tr height="30">
					<td id="th2" colspan="2">귀하의 비밀번호는<br>
					[ <c:out value="${vo.mem_pwd}"/> ]입니다.</td>
				</tr>
			</table>
		</form>
</body>
</html>