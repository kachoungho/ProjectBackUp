<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html >
<html>
<head>
<link rel="stylesheet" type="text/css"	href="/FirstProject/css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="g_b_SchoolPro.do" method="post">
		<b id="th2" height="70">※ 신청 전에 전화번호, E-mail 등 개인정보를 확인하여 주시길 바랍니다. </b></br>
		<b id="th2" height="70">※ 복학 신청은 확실히 결정 후 신청하시길 바랍니다. 신청 취소는 학과 사무실에 문의하세요!</b>
		<p>
			<c:forEach var="list" items="${ list }">
				<input type="hidden" name="mem_num" value="${mem_num}">
				<table width="950"  align="center">
					<tr height="30">
						<td id="th" width="220">전공</td>
						<td id="th2">${ list.major }</td>
						<td id="th" width="220">성명</td>
						<td id="th2">${ list.stu_name }</td>
					</tr>
					<tr height="30">
						<td id="th">학년</td>
						<td id="th2">${ list.grade }</td>
						<td id="th">학번</td>
						<td id="th2">${ list.stu_num }</td>
					</tr>
					<tr height="30">
						<td id="th">생년월일</td>
						<td id="th2">${ list.stu_birthday }</td>
						<td id="th">지도교수</td>
						<td id="th2">${ list.stu_professor }</td>
					</tr>
					<tr height="30">
						<td id="th">이메일</td>
						<td id="th2">${ list.stu_email }</td>
						<td id="th">휴대전화</td>
						<td id="th2">${ list.tel }</td>
					</tr>
					<tr height="30">
						<td id="th">주소</td>
						<td id="th2" colspan="3">${ list.address }</td>
					</tr>
					<tr height="30">
						<td id="th2" colspan="4">
							<input type="submit" class="css_btn_class" value="신청">
							<input type="reset" class="css_btn_class" value="취소">
						</td>
					</tr>
				</table>
			</c:forEach>
	</form>
</body>
</html>