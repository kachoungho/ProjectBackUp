<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html >
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="/FirstProject/css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


</head>
<body>
	<form action="/FirstProject/returnApprovePro.do" method="post">
		<p>
			<input type="hidden" name="mem_num" value="${mem_num}">
		<table align="center">
			<tr>
				<td class="font2"><b>복학 승인 페이지</b></td>
			</tr>
		</table>
		<br><br>
		<c:forEach var="list" items="${ list }">
			<table align="center">
				<tr>
					<td id="th" width="50">선택</td>
					<td id="th" width="100">전공</td>
					<td id="th2" width="250">${ list.major }</td>
					<td id="th" width="100">성명</td>
					<td id="th2" width="250">${ list.stu_name }</td>
				</tr>

				<tr>
					<td id="th2" rowspan="4"><input type="checkbox"
						name="checkbox" value="${list.stu_num}"></td>
					<td id="th">학년</td>
					<td id="th2">${ list.stu_grade }</td>
					<td id="th">학번</td>
					<td id="th2">${ list.stu_num }</td>
				</tr>

				<tr>
					<td id="th">생년월일</td>
					<td id="th2">${ list.stu_birthday }</td>
					<td id="th">지도교수</td>
					<td id="th2">${ list.stu_professor }</td>
				</tr>

				<tr>
					<td id="th">이메일</td>
					<td id="th2">${ list.stu_email }</td>
					<td id="th">휴대전화</td>
					<td id="th2">${ list.tel }</td>
				</tr>

				<tr>
					<td id="th">주소</td>
					<td id="th2" colspan="3">${ list.address }</td>
				</tr>
			</table>
		</c:forEach>
		<table align="center">
			<tr>
				<td id="th2" colspan="5"><input type="submit" class="css_btn_class" value="승인">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>