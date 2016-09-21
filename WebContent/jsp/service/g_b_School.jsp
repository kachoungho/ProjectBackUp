<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table width="900" valign="middle" border="0" cellspacing="0"
		cellpadding="0">
		<tr>
			<td width="900"><img src="../images/dot_2.gif">&nbsp;<strong>학적기본정보</strong></td>
		</tr>
		<tr>
			<td height="10"></td>
		</tr>
	</table>

	<table width="900" border="1" cellspacing="1" cellpadding="2"  style="text-align:center">
		<tr >
			<td width="100"  height="30">학부(과)</td>
			<td width="200" >${"학과"}</td>
			<td width="100" >전&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;공</td>
			<td width="200" >${"전공" }</td>
			<td width="100" >주&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;야</td>
			<td width="200" >${"주 야"}</td>
		</tr>

		<tr >
			<td width="100" height="30">학&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;년</td>
			<td width="200">${"학년" }</td>
			<td width="100" >학&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;번</td>
			<td width="200" >${"학번" }</td>
			<td width="100" >이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;름</td>
			<td width="200" >${"이름" }</td>
		</tr>

	</table>
	<table width="900" valign="middle" border="0" cellspacing="0"
		cellpadding="0">
		<tr>
			<td height="70"></td>
		</tr>

		<tr>
			<td width="200"><img src="../images/dot_2.gif">&nbsp;<strong>복학 신청</strong></td>
			<td align="left" width="75"><input type="image"
				onClick="javascript:f_save(); return false;"
				src="../images/btnRequest.gif"></td>
			<td align="left" width="75"><input type="image"
				onClick="javascript:f_print(); return false;"
				src="../images/btnPrint2.gif"></td>
			<td align="right"><strong>${"복학신청기간" }
						</strong></font></td>
		</tr>
		<tr>
			<td height="10"></td>
		</tr>
	</table>



</body>
</html>