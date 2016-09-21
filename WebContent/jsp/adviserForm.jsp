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
		<td width="90" ><a href="/FirstProject/basic.do">기본 사항</a></td>
		<td width="90" ><a href="/FirstProject/registerChange.do">학적 변동</a></td>
		<td width="130" ><a href="/FirstProject/multiMajorStatus.do">다전공 이수 현황</a></td>
		<td width="90" ><a href="/FirstProject/scholarship.do">장학 사항</a></td>
		<td width="90" ><a href="/FirstProject/adviser.do">지도 교수</a></td>
		<td width="90" ><a href="/FirstProject/registerStatus.do">등록 사항</a></td>
		</tr>
	</table>
	<br><br><br>

	<table border="0" width="60%" cellspacing="0" cellpadding="0"
		valign="top">
		<tr>
			<td width="30">&nbsp;</td>
			<td align="left">
				<table width="70%" border="0" cellspacing="1" cellpadding="2"
					bgcolor="#737373">
					<tr>
						<td align="center" height="20" colspan="3">지도교수</td>
					</tr>
					<tr bgcolor="#F5F5F5">
						<td rowspan="5" width="140" height="35" valign="middle"></td>
						<td width="140" height="35" align="center" bgcolor="#D0D8FF">
							이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;름</td>
						<td align="center">${"이름"}</td>
					</tr>
					<tr bgcolor="#F5F5F5">
						<td width="140" height="35" align="center" bgcolor="#D0D8FF">
							소&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;속</td>
						<td align="center">${"소속"}</td>
					</tr>
					<tr bgcolor="#F5F5F5">
						<td width="140" height="35" align="center" bgcolor="#D0D8FF">
							보&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;직</td>
						<td align="center">${"보직"}</td>
					</tr>
					<tr bgcolor="#F5F5F5">
						<td width="140" height="35" align="center" bgcolor="#D0D8FF">
							전&nbsp;화&nbsp;번&nbsp;호</td>
						<td align="center">${"전화번호"}</td>
					</tr>
					<tr bgcolor="#F5F5F5">
						<td width="140" height="35" align="center" bgcolor="#D0D8FF">
							이&nbsp;&nbsp;&nbsp;메&nbsp;&nbsp;&nbsp;일</td>
						<td align="center">${"이메일"}</td>
					</tr>

				</table>
				
			</td>
		</tr>
	</table>

</body>
</html>