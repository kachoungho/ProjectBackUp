<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"	href="/FirstProject/css/style.css">
<script LANGUAGE="JavaScript">
	function go() {
		var frm1 = document.pickForm1;
		frm1.acceptCharset = 'utf-8';
		if (document.all)
			document.charset = 'utf-8';
		frm1.submit();

		frm1.acceptCharset = 'euc-kr';
		if (document.all)
			document.charset = 'euc-kr';
	}
</script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>th125 JSP Template</title>
</head>
<body>
	<form name=pickForm1 action="/FirstProject/lectureUpdatePro.do"
		method="post" accept-charset="">
		<fieldset>
			<legend>수 업 목 록</legend>

			<table border="1">

				<tr>
					<td bgcolor="skyblue" width="100">체 크</td>
					<td bgcolor="skyblue" width="100">수강 코드</td>
					<td bgcolor="skyblue" width="200">과 목 명</td>
					<td bgcolor="skyblue" width="100">학 점</td>
					<td bgcolor="skyblue" width="100">담당 교수</td>
					<td bgcolor="skyblue" width="100">강의 시간</td>
					<td bgcolor="skyblue" width="100">수정 / 삭제</td>

				</tr>
				<c:forEach var="list" items="${list}">
					<tr>
						<td><input type="checkbox" name="checklist"
							value="${list.sub_code}"></td>
						<td>${list.sub_code}</td>
						<td>${list.sub_name}</td>
						<td>${list.sub_hakjum}</td>
						<td>${list.emp_name}</td>
						<td>${list.sub_time}</td>
						<td colspan="6"><input type="submit" value="수정"> <input
							type="button" value="삭제"
							onclick="document.location.href='lectureDelete.do?checkbox=${list.sub_code}'"></td>
					</tr>
				</c:forEach>

			</table>

		</fieldset>
	</form>
</body>
</html>