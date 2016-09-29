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
	<table border="1">

		<tr align="center">
			<td bgcolor="skyblue" width="100">수강코드</td>
			<td bgcolor="skyblue" width="300">과 목 명</td>
			<td bgcolor="skyblue" width="100">담당교수</td>
			<td bgcolor="skyblue" width="100">학 점</td>
			<td bgcolor="skyblue" width="100">이수구분<br>(교양,전공)
			</td>
			<td bgcolor="skyblue" width="100">등 급</td>
		</tr>

		<c:forEach var="list" items="${list}">
			<tr align="center">
				<td>${list.sub_code}</td>
				<td>${list.sub_name}</td>
				<!-- taglib 형태로 수정필요-->
				<td>${list.emp_name}</td>
				<!-- taglib 형태로 수정필요-->
				<td>${list.sub_hakjum}</td>
				<c:if test="${list.sub_hakjum == 3}">
					<td><c:set var="gubun" value="전공" />전공</td>
				</c:if>
				<c:if test="${list.sub_hakjum == 2}">
					<td><c:set var="gubun" value="교양" />교양</td>
				</c:if>
				<td>${list.sub_grade}</td>
				<!-- taglib 형태로 수정필요-->
			</tr>
		</c:forEach>
		<tr align="center">
			<td colspan="6">이의 신청은 여기로 전화하지마<br> 이의 신청따위 받지 않는다
			</td>
		</tr>


	</table>
</body>
</html>