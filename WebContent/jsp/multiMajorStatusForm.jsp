<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style type="text/css">
html, body {
	width: 100%;
	height: 100%;
	margin: 0;
	padding: 0;
}

.btn-default {
	text-align: center;
	font-family: '1훈고딕굴림';'
	color: black;
	font-size: 20px;
	margin-top: 10px;
}
</style>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>th125 JSP Template</title>
</head>
<body>
	<table  class="btn btn-default"  width="670" border="1" cellspacing="0" cellpadding="0">
		<tr align="center">
			<td width="90"><a
				href="/FirstProject/basic.do">기본
					사항</a></td>
			<td width="90"><a
				href="/FirstProject/registerChange.do">학적
					변동</a></td>
			<td width="130"><a
				href="/FirstProject/multiMajorStatus.do">다전공
					이수 현황</a></td>
			<td width="90"><a
				href="/FirstProject/scholarship.do">장학
					사항</a></td>
			<td width="90"><a
				href="/FirstProject/adviser.do">지도
					교수</a></td>
			<td width="90"><a
				href="/FirstProject/registerStatus.do">등록
					사항</a></td>
		</tr>
	</table>
	<br>
	<br>
	<br>
	
	<table border="0" width="95%" cellspacing="0" cellpadding="0" valign="top">
		<tr>
			<td colspan="2" height="10">&nbsp;</td>
		</tr>
		<tr>
			<td width="10">&nbsp;</td> 
			<td align="left">
				<table  width="70%" bgcolor="#737373" cellspacing="1" cellpadding="3" height="20" valign="center">
					<tr> 
						<td height="25" bgcolor="#D0D8FF" width="120" align="center">전 &nbsp;공 &nbsp;구 &nbsp;분</td>
						<td bgcolor="#D0D8FF" align="center">전 &nbsp;&nbsp;공 &nbsp;&nbsp;명</td>
					</tr>
					<tr bgcolor="#F5F5F5"  align="center"> 
						<td height="20" width="120" align="center">복 수 &nbsp;전 공&nbsp;1</td>
						<td align="left">&nbsp; </td>
					</tr>
					<tr bgcolor="#F5F5F5"  align="center"> 
						<td height="20" width="120" align="center">복 수 &nbsp;전 공&nbsp;2</td>
						<td align="left">&nbsp; </td>
					</tr>
					<tr bgcolor="#F5F5F5"  align="center">          
						<td height="20" width="120" align="center">부 &nbsp;&nbsp;전 &nbsp;&nbsp;공&nbsp;&nbsp;1</td>
						<td align="left">&nbsp; </td>
					</tr>
					<tr bgcolor="#F5F5F5"  align="center">          
						<td height="20" width="120" align="center">부 &nbsp;&nbsp;전 &nbsp;&nbsp;공&nbsp;&nbsp;2</td>
						<td align="left">&nbsp; </td>
					</tr>
					<tr bgcolor="#F5F5F5"  align="center">          
						<td height="20" width="120" align="center">연 &nbsp;계 &nbsp;전 &nbsp;공</td>
						<td align="left">&nbsp;인터랙티브엔터테인먼트</td>
					</tr>
					<tr bgcolor="#F5F5F5"  align="center">          
						<td height="20" width="120" align="center">교 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;직</td>
						<td align="left">&nbsp; </td>
					</tr>
					<tr bgcolor="#F5F5F5"  align="center">          
						<td height="20" width="120" align="center">교직복수전공</td>
						<td align="left">&nbsp; </td>
					</tr>
					<tr bgcolor="#F5F5F5"  align="center">          
						<td height="20" width="120" align="center">교직 &nbsp;&nbsp;부전공</td>
						<td align="left">&nbsp; </td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>