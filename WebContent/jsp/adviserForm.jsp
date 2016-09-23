<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>th125 JSP Template</title>
</head>
<body>
	<table width="670" border="1" cellspacing="0" cellpadding="0">
		<tr align="center">
			<td width="90"><a
				href="/FirstProject/basic.do?mem_num=${mem_num}&mem_name=${mem_name}">기본
					사항</a></td>
			<td width="90"><a
				href="/FirstProject/registerChange.do?mem_num=${mem_num}&mem_name=${mem_name}">학적
					변동</a></td>
			<td width="130"><a
				href="/FirstProject/multiMajorStatus.do?mem_num=${mem_num}&mem_name=${mem_name}">다전공
					이수 현황</a></td>
			<td width="90"><a
				href="/FirstProject/scholarship.do?mem_num=${mem_num}&mem_name=${mem_name}">장학
					사항</a></td>
			<td width="90"><a
				href="/FirstProject/adviser.do?mem_num=${mem_num}&mem_name=${mem_name}">지도
					교수</a></td>
			<td width="90"><a
				href="/FirstProject/registerStatus.do?mem_num=${mem_num}&mem_name=${mem_name}">등록
					사항</a></td>
		</tr>
	</table>
	<br>
	<br>
	<br>

	<table border="0" width="60%" cellspacing="0" cellpadding="0"
		valign="top">

		<tr>
			<td width="30">&nbsp;</td>
			<td align="left">
				<table width="70%" border="0" cellspacing="1" cellpadding="2"
					bgcolor="#737373">
					<c:forEach var="list" items="${ list }">
						<tr>
							<td align="center" height="20" colspan="3">지도교수</td>
						</tr>
						<tr bgcolor="#F5F5F5">
							<td rowspan="4" width="140" height="35" valign="middle">
								<img name="sajin" width="150" height="170" src="/FirstProject/jsp/images/${list.emp_num}.jpg">
							</td>
							<td width="140" height="35" align="center" bgcolor="#D0D8FF">
								이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;름</td>
							<td align="center">${list.emp_name}</td>
						</tr>
						<tr bgcolor="#F5F5F5">
							<td width="140" height="35" align="center" bgcolor="#D0D8FF">
								소&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;속</td>
							<td align="center">${list.major}</td>
						</tr>
						<tr bgcolor="#F5F5F5">
							<td width="140" height="35" align="center" bgcolor="#D0D8FF">
								전&nbsp;화&nbsp;번&nbsp;호</td>
							<td align="center">${list.tel}</td>
						</tr>
						<tr bgcolor="#F5F5F5">
							<td width="140" height="35" align="center" bgcolor="#D0D8FF">
								이&nbsp;&nbsp;&nbsp;메&nbsp;&nbsp;&nbsp;일</td>
							<td align="center">${list.emp_email}</td>
						</tr>
					</c:forEach>
				</table>
			</td>
		</tr>
	</table>

</body>
</html>