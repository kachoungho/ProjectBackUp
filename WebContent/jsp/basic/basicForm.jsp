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

	<table class="btn btn-default3" width="670" cellspacing="0"
		cellpadding="0">
		<tr align="center">
			<td width="200"><a href="/FirstProject/basic.do">기본 사항</a></td>
			<td width="200"><a href="/FirstProject/scholarship.do">장학 사항</a></td>
			<td width="200"><a href="/FirstProject/adviser.do">지도 교수</a></td>
		</tr>
	</table>
	<br>
	<br>
	<br>

	<table width="670" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td>&nbsp;</td>
		</tr>
	</table>
	<!-- 학생정보 테이블 -->
	<table width="670" border="0" cellspacing="1" cellpadding="2"
		bgcolor="#737373">

		<c:forEach var="list" items="${ list }">

			<tr align="center" bgcolor="#F5F5F5" align="center">

				<td width="100" colspan="2" rowspan="10"><img name="sajin"
					width="150" height="170"
					src="/FirstProject/jsp/images/${list.stu_num}.jpg"></td>
				<td width="100" bgcolor="#D0D8FF" height="20">성&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;명</td>


				<td align="center" width="210" align="left"><c:out
						value="${list.stu_name}" /></td>


				<td width="120" bgcolor="#D0D8FF">전공명</td>


				<td align="center" width="250" colspan="3" align="left">${list.major}</td>

			</tr>

			<tr bgcolor="#F5F5F5" align="center">

				<td width="120" bgcolor="#D0D8FF" height="20">생년월일</td>
				<td align="center" width="171">${list.stu_birthday}</td>

				<td width="120" bgcolor="#D0D8FF">학&nbsp;&nbsp;&nbsp;년</td>
				<td align="center" width="85">${list.grade}</td>
				<td width="52" bgcolor="#D0D8FF">상&nbsp;태</td>
				<td align="center" width="101">${list.stu_state}</td>
			</tr>

			<tr bgcolor="#F5F5F5" align="center">
				<td width="120" bgcolor="#D0D8FF" height="20">휴 대 폰</td>
				<td align="center" width="171" align="left">${list.tel}</td>
				<td width="120" bgcolor="#D0D8FF">이 메 일</td>
				<td align="center" width="250" colspan="3" align="left">${list.stu_email}</td>
			</tr>
			<tr bgcolor="#F5F5F5" align="center">
				<td width="68" bgcolor="#D0D8FF" height="20">주 소</td>
				<td align="center" width="591" colspan="6" align="left">${list.address}</td>
			</tr>
			<tr bgcolor="#F5F5F5" align="center">
				<td width="120" bgcolor="#D0D8FF" height="20">유선전화</td>
				<td align="center" colspan="6" width="171" align="left">${list.home_tel}</td>
			</tr>
		</c:forEach>
	</table>


</body>
</html>