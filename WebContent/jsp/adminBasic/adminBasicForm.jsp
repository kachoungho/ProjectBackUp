<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/FirstProject/css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>th125 JSP Template</title>
</head>
<body>
<br><br>
	<table id="th" cellspacing="1" cellpadding="2">
		<c:forEach var="list" items="${ list }">
			<tr>
				<td width="100" colspan="2" rowspan="9">
					<img name="sajin" width="150" height="170" 	src="/FirstProject/jsp/images/${list.emp_num}.jpg">
				</td>
				<td id="th" width="100" height="20">성  명</td>
				<td id="th2">${list.emp_name}</td>
				<td id="th" width="100">소 속</td>
				<td id="th2" colspan="3">${list.major}</td>
			</tr>

			<tr>
				<td id="th" height="20">직 책</td>
				<td id="th2">${list.emp_grade}</td>
				<td id="th">호 봉</td>
				<td id="th2">${list.mon_lev}</td>
			</tr>

			<tr>
				<td id="th" height="20">휴 대 폰</td>
				<td id="th2">${list.tel}</td>
				<td id="th" >이 메 일</td>
				<td id="th2" colspan="3">${list.emp_email}</td>
			</tr>
			
			<tr>
				<td id="th" height="20">월 급</td>
				<td id="th2" colspan="6">${list.money}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>