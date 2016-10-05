<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"	href="/FirstProject/css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>th125 JSP Template</title>
</head>
<body>
	<br>
	<table cellspacing="0" cellpadding="0">
		<tr align="center">
			<td id="th2" width="150"><a class="btn btn-default3" href="/FirstProject/basic.do">기본 사항</a></td>
			<td id="th2" width="150"><a class="btn btn-default3" href="/FirstProject/scholarship.do">장학 사항</a></td>
			<td id="th2" width="150"><a class="btn btn-default3" href="/FirstProject/adviser.do">지도 교수</a></td>
		</tr>
	</table>
	<br>
	<br>
	<br>

				<table width="50%" cellspacing="1" cellpadding="2">
					<c:forEach var="list" items="${ list }">
						<tr>
							<td id="th2" align="center" height="20" colspan="3"><strong>지도교수</strong></td>
						</tr>
						<tr>
							<td rowspan="4" width="140" height="35">
								<img name="sajin" width="150" height="170" src="/FirstProject/jsp/images/${list.emp_num}.jpg">
							</td>
							<td id="th" width="140" height="35">이  름</td>
							<td id="th2">${list.emp_name}</td>
						</tr>
						<tr>
							<td id="th" width="140" height="35">
								소  속</td>
							<td id="th2">${list.major}</td>
						</tr>
						<tr>
							<td id="th" width="140" height="35">전화번호</td>
							<td id="th2">${list.tel}</td>
						</tr>
						<tr>
							<td id="th" width="140" height="35">이 메 일</td>
							<td id="th2">${list.emp_email}</td>
						</tr>
					</c:forEach>
				</table>
</body>
</html>