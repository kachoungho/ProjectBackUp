<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.center {
	text-align: center;
}

html, body {
	width: 100%;
	height: 100%;
	margin: 0;
	padding: 0; . btn-default { text-align : center;
	font-family: '1훈고딕굴림'; '
	color: black;
	font-size: 20px;
	margin-top: 10px;
}
</style>

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


</style>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>th125 JSP Template</title>
</head>
<body>
	

	<table width="750" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td>&nbsp;</td>
		</tr>
	</table>
	<!-- 학생정보 테이블 -->
	<form name="adminUpdateform" action="/FirstProject/adminBasicUpdate.do"
		method="post">
	<input type="hidden" name="mem_num" value="${mem_num}">
	<table width="750" border="0" cellspacing="1" cellpadding="2"
		bgcolor="#737373">

		<c:forEach var="list" items="${ list }">

			<tr align="center" bgcolor="#F5F5F5" align="center">

				<td width="100" colspan="2" rowspan="9"><img name="sajin"
					width="150" height="170"
					src="/FirstProject/jsp/images/${list.emp_num}.jpg"></td>
				<td width="100" bgcolor="#D0D8FF" height="20">성&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;명</td>


				<td align="center" width="210" align="left"><c:out
						value="${list.emp_name}" /></td>


				<td width="120" bgcolor="#D0D8FF">소 속</td>


				<td align="center" width="250" colspan="3" align="left">&nbsp;<input
						type="text" name="editMajor" value="${ list.major }"></td>

			</tr>

			<tr bgcolor="#F5F5F5" align="center">

				<td width="210" bgcolor="#D0D8FF" height="20">직 책</td>
				<td align="center" width="250">&nbsp;<input
						type="text" name="editEmp_grade" value="${ list.emp_grade }"></td>

				<td width="210" bgcolor="#D0D8FF">호 봉</td>
				<td align="center" width="250">&nbsp;<input
						type="text" name="editMon_lev" value="${ list.mon_lev}"></td>
			</tr>

			<tr bgcolor="#F5F5F5" align="center">
				<td width="120" bgcolor="#D0D8FF" height="20">휴 대 폰</td>
				<td align="center" width="171" align="left">&nbsp;<input
						type="text" name="editTel" value="${ list.tel }"></td>
				<td width="210" bgcolor="#D0D8FF">이 메 일</td>
				<td align="center" width="250" colspan="3" align="left">&nbsp;<input
						type="text" name="editEmp_email" value="${ list.emp_email }"></td>
			</tr>
			<tr bgcolor="#F5F5F5" align="center">
				<td width="120" bgcolor="#D0D8FF" height="20">월 급</td>
				<td align="center" width="120" colspan="1" align="left">&nbsp;<input
						type="text" name="editMoney" value="${ list.money }"></td>
				<td width="210" bgcolor="#D0D8FF" height="20">비밀번호</td>
				<td align="center" width="210" colspan="1" align="left">&nbsp;<input
						type="text" name="editEmp_pwd" value="${ list.emp_pwd }"></td>
			</tr>
			
		</c:forEach>
		</table>

	<table>
			<tr>
				<td><input type="button" value="수정" onclick="go()"> <!-- 수정하세여~  -->
					<input type="reset" value="취소"> <!-- 수정하세여~  --></td>
			</tr>
		</table>
		</form>
</body>
</html>