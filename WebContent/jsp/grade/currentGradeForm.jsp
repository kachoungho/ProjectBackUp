<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"	href="/FirstProject/css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>th125 JSP Template</title>
</head>
<body>
	<table>
		<tr>
			<td id="th"width="100">수강코드</td>
			<td id="th" width="300">과 목 명</td>
			<td id="th" width="100">담당교수</td>
			<td id="th" width="100">학 점</td>
			<td id="th" width="100">이수구분<br>(교양,전공)</td>
			<td id="th" width="100">등 급</td>
		</tr>

		<c:forEach var="list" items="${list}">
			<tr>
				<td id="th2" height="30">${list.sub_code}</td>
				<td id="th2">${list.sub_name}</td>
				<td id="th2">${list.emp_name}</td>
				<td id="th2">${list.sub_hakjum}</td>
				<c:if test="${list.sub_hakjum == 3}">
					<td id="th2"><c:set var="gubun" value="전공" />전공</td>
				</c:if>
				<c:if test="${list.sub_hakjum == 2}">
					<td id="th2"><c:set var="gubun" value="교양" />교양</td>
				</c:if>
				<td id="th2">${list.sub_grade}</td>
			</tr>
		</c:forEach>
		<tr>
			<td id="th2" colspan="6" height="200">
				이의 신청은 여기로 전화하지마<br><br>이의 신청따위 받지 않는다
			</td>
		</tr>


	</table>
</body>
</html>