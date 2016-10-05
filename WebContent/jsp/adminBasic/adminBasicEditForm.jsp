<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="/FirstProject/css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script LANGUAGE="JavaScript">
	function go() {
		var frm1 = document.adminUpdateform;
		frm1.acceptCharset = 'utf-8';
		if (document.all)
			document.charset = 'utf-8';
		frm1.submit();

		frm1.acceptCharset = 'euc-kr';
		if (document.all)
			document.charset = 'euc-kr';
	}
</script>

<title>교수 개인 정보 수정</title>
</head>
<body>
	<br>
	<br>
	<!-- 학생정보 테이블 -->
	<form name="adminUpdateform" action="/FirstProject/adminBasicUpdate.do" method="post">
		<input type="hidden" name="mem_num" value="${mem_num}">
		<table align="center">
			<c:forEach var="list" items="${ list }">
				<tr>
					<td width="100" colspan="2" rowspan="9">
						<img name="sajin" width="150" height="170" src="/FirstProject/jsp/images/${list.emp_num}.jpg">
					</td>
					<td id="th" height="30">성  명</td>
					<td id="th2">${list.emp_name}</td>
					<td id="th">소 속</td>
					<td id="th2">
						<input type="text" name="editMajor" value="${ list.major }">
					</td>
				</tr>

				<tr>
					<td id="th" height="30">직 책</td>
					<td id="th2">
						<input type="text" name="editEmp_grade" value="${ list.emp_grade }">
					</td>
					<td id="th">호 봉</td>
					<td id="th2">
						<input type="text" name="editMon_lev" value="${ list.mon_lev}">
					</td>
				</tr>

				<tr>
					<td id="th" height="30">휴 대 폰</td>
					<td id="th2">
						<input type="text" name="editTel" value="${ list.tel }">
					</td>
					<td id="th">이 메 일</td>
					<td id="th2">
						<input type="text" name="editEmp_email" value="${ list.emp_email }">
					</td>
				</tr>
				
				<tr>
					<td id="th" height="30">월 급</td>
					<td id="th2">
						<input type="text" name="editMoney" value="${ list.money }">
					</td>
					<td id="th">비밀번호</td>
					<td id="th2">
						<input type="text" name="editEmp_pwd" value="${ list.emp_pwd }">
					</td>
				</tr>
				
				<tr>
					<td id="th2" colspan="4" height="30">
						<input class="css_btn_class" type="button" value="수정" onclick="go()">
						<input class="css_btn_class" type="reset" value="취소">
					</td>
				</tr>
				
			</c:forEach>
		</table>
	</form>
</body>
</html>