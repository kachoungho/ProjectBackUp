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
	<form name=pickForm1 action="/FirstProject/lectureUpdatePro.do" method="post" accept-charset="">
		<fieldset style="width: 600px">
			<legend>수 업 목 록</legend>
			<table align="center">
				<tr>
					<td id="th">체 크</td>
					<td id="th">수강 코드</td>
					<td id="th">과 목 명</td>
					<td id="th">학 점</td>
					<td id="th">담당 교수</td>
					<td id="th">강의 시간</td>
					<td id="th">수정 / 삭제</td>
				</tr>
				
				<c:forEach var="list" items="${list}">
					<tr>
						<td id="th2">
							<input type="checkbox" name="checklist" value="${list.sub_code}">
						</td>
						<td id="th2">${list.sub_code}</td>
						<td id="th2">${list.sub_name}</td>
						<td id="th2">${list.sub_hakjum}</td>
						<td id="th2">${list.emp_name}</td>
						<td id="th2">${list.sub_time}</td>
						<td id="th2">
							<input type="submit" class="css_btn_class" value="수정"> 
							<input type="button" class="css_btn_class"  value="삭제"
							onclick="document.location.href='lectureDelete.do?checkbox=${list.sub_code}'">
						</td>
					</tr>
				</c:forEach>
			</table>
		</fieldset>
	</form>
</body>
</html>