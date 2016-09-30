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
	

	<table width="670" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td>&nbsp;</td>
		</tr>
	</table>
	<!-- 학생정보 테이블 -->
	<table width="670" border="0" cellspacing="1" cellpadding="2"
		bgcolor="#737373">
		
<c:forEach var="list" items="${ list }">

		<tr align="center" bgcolor="#F5F5F5" align="center">
			
				<td width="100" colspan="2" rowspan="9">
				<img name="sajin" width="150" height="170" src="/FirstProject/jsp/images/${list.emp_num}.jpg">
				</td>
				<td width="100" bgcolor="#D0D8FF" height="20">성&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;명</td>
				
				
				<td align="center"  width="210" align="left"><c:out value="${list.emp_name}" /></td> 
				
				
				<td width="120" bgcolor="#D0D8FF">소  속</td>
				

				<td align="center"  width="250" colspan="3" align="left">${list.major}</td>
			
		</tr>

		<tr  bgcolor="#F5F5F5" align="center">

			<td width="210" bgcolor="#D0D8FF" height="20">직  책</td>
			<td align="center"  width="250">${list.emp_grade}</td>

			<td width="210" bgcolor="#D0D8FF">호  봉</td>
			<td align="center"  width="250">${list.mon_lev}</td>
		</tr>

		<tr bgcolor="#F5F5F5" align="center">
			<td width="120" bgcolor="#D0D8FF" height="20">휴 대 폰</td>
			<td align="center"  width="171" align="left">${list.tel}</td>
			<td width="120" bgcolor="#D0D8FF">이 메 일</td>
			<td align="center"  width="250" colspan="3" align="left">${list.emp_email}</td>
		</tr>
		<tr bgcolor="#F5F5F5" align="center">
			<td width="68" bgcolor="#D0D8FF" height="20">월  급</td>
			<td align="center"  width="591" colspan="6" align="left">${list.money}</td>
		</tr>
		
		</c:forEach>
	</table>
	
	
</body>
</html>