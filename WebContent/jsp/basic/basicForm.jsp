<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="/FirstProject/css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>th125 JSP Template</title>
</head>
<body>
	<br>
	<table align="center">
		<tr align="center">
			<td id="th2" width="150"><a class="btn btn-default3"
				href="/FirstProject/basic.do">개인 정보</a></td>
			<td id="th2" width="150"><a class="btn btn-default3"
				href="/FirstProject/scholarship.do">장학 사항</a></td>
			<td id="th2" width="150"><a class="btn btn-default3"
				href="/FirstProject/adviser.do">지도 교수</a></td>
		</tr>
	</table>
	<br>
	<br>
	<br>
	<!-- 학생정보 테이블 -->

	<table width="780" align="center">
		<tr>
			<td id="th2" height="10" valign="middle" colspan="8" bgcolor="white"><strong>개인정보</strong></td>
		</tr>
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
				<td id="th" height="20">생년월일</td>
				<td id="th2">${list.stu_birthday}</td>
				<td id="th">학 년</td>
				<td id="th2" width="50">${list.grade}</td>
				<td id="th" width="100">상 태</td>
				<td id="th2" width="100">${list.stu_state}</td>
			</tr>

			<tr>
				<td id="th" height="20">휴 대 폰</td>
				<td id="th2">${list.tel}</td>
				<td id="th">이 메 일</td>
				<td id="th2" colspan="3">${list.stu_email}</td>
			</tr>

			<tr>
				<td id="th" height="20">주 소</td>
				<td id="th2" colspan="5">${list.address}</td>
			</tr>

			<tr>
				<td id="th" height="20">유선전화</td>
				<td id="th2" colspan="5" >${list.home_tel}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>