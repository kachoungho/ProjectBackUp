<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="/FirstProject/css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>th125 JSP Template</title>
</head>
<body>
<br><br>
	<table width="670" cellspacing="1" cellpadding="2">
		<c:forEach var="list" items="${ list }">

			<tr>
				<td width="100" colspan="2" rowspan="10"><img name="sajin"
					width="150" height="170"
					src="/FirstProject/jsp/images/${list.stu_num}.jpg"></td>
				<td id="th" width="100" height="20">성 명</td>
				<td id="th2" width="210"><c:out value="${list.stu_name}" /></td>
				<td id="th" width="120">전 공 명</td>
				<td id="th2" width="250" colspan="3">${list.major}</td>
			</tr>


			<tr>
				<td id="th" width="120" height="20">생년월일</td>
				<td id="th2" width="171">${list.stu_birthday}</td>
				<td id="th" width="120">학 년</td>
				<td id="th2" width="85">${list.grade}</td>
				<td id="th" width="52">상 태</td>
				<td id="th2" width="101">${list.stu_state}</td>
			</tr>

			<tr>
				<td id="th" width="120" height="20">휴 대 폰</td>
				<td id="th2" width="171">${list.tel}</td>
				<td id="th" width="120">이 메 일</td>
				<td id="th2" width="250" colspan="3">${list.stu_email}</td>
			</tr>

			<tr>
				<td id="th" width="68" height="20">주 소</td>
				<td id="th2" width="591" colspan="6">${list.address}</td>
			</tr>

			<tr>
				<td id="th" width="120" height="20">유선전화</td>
				<td id="th2" colspan="6" width="171">${list.home_tel}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>