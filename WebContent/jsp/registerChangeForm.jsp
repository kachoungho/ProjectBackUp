<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>th125 JSP Template</title>
</head>
<body>
	<table width="670" border="1" cellspacing="0" cellpadding="0">
		<tr align="center">
		<td width="90" ><a href="/FirstProject/basic.do?mem_num=${mem_num}&mem_name=${mem_name}">기본 사항</a></td>
		<td width="90" ><a href="/FirstProject/registerChange.do?mem_num=${mem_num}&mem_name=${mem_name}">학적 변동</a></td>
		<td width="130" ><a href="/FirstProject/multiMajorStatus.do?mem_num=${mem_num}&mem_name=${mem_name}">다전공 이수 현황</a></td>
		<td width="90" ><a href="/FirstProject/scholarship.do?mem_num=${mem_num}&mem_name=${mem_name}">장학 사항</a></td>
		<td width="90" ><a href="/FirstProject/adviser.do?mem_num=${mem_num}&mem_name=${mem_name}">지도 교수</a></td>
		<td width="90" ><a href="/FirstProject/registerStatus.do?mem_num=${mem_num}&mem_name=${mem_name}">등록 사항</a></td>
		</tr>
	</table>
	<br><br><br>

	<table border="0" width="98%" cellspacing="0" cellpadding="0" valign="top" align="center">
		<tr>
			<td height="5"></td>
		</tr>
		<tr>
			<td>
				<table  width="90%" bgcolor="#737373" cellspacing="1" cellpadding="3" height="20" valign="center">
					<tr> 
						<td height="20" bgcolor="#D0D8FF" width="30" align="center">순번</td>
						<td bgcolor="#D0D8FF" align="center">학적변동사항</td>
						<td bgcolor="#D0D8FF" width="100" align="center">일반휴학학기수</td>
						<td bgcolor="#D0D8FF" width="100" align="center">변동시작일</td>
						<td bgcolor="#D0D8FF" width="100" align="center">변동종료일</td>
					</tr>
					
						<tr>
							<td height="20" bgcolor="#F5F5F5" width="30" align="center"  height="20">1</td>
							<td bgcolor="#F5F5F5" align="left">&nbsp;군입영휴학</td>
							<td bgcolor="#F5F5F5" width="100" align="center"> </td>
							<td bgcolor="#F5F5F5" width="100" align="center">2010-08-11</td>
							<td bgcolor="#F5F5F5" width="100" align="center">2012-08-31</td>
						</tr>
						
						<tr>
							<td height="20" bgcolor="#F5F5F5" width="30" align="center"  height="20">2</td>
							<td bgcolor="#F5F5F5" align="left">&nbsp;복학</td>
							<td bgcolor="#F5F5F5" width="100" align="center"> </td>
							<td bgcolor="#F5F5F5" width="100" align="center">2012-08-05</td>
							<td bgcolor="#F5F5F5" width="100" align="center">2012-08-05</td>
						</tr>
						
						<tr>
							<td height="20" bgcolor="#F5F5F5" width="30" align="center"  height="20">3</td>
							<td bgcolor="#F5F5F5" align="left">&nbsp;일반휴학</td>
							<td bgcolor="#F5F5F5" width="100" align="center">1</td>
							<td bgcolor="#F5F5F5" width="100" align="center">2013-08-16</td>
							<td bgcolor="#F5F5F5" width="100" align="center">2014-02-28</td>
						</tr>
						
						<tr>
							<td height="20" bgcolor="#F5F5F5" width="30" align="center"  height="20">4</td>
							<td bgcolor="#F5F5F5" align="left">&nbsp;복학</td>
							<td bgcolor="#F5F5F5" width="100" align="center"> </td>
							<td bgcolor="#F5F5F5" width="100" align="center">2014-02-02</td>
							<td bgcolor="#F5F5F5" width="100" align="center">2014-02-02</td>
						</tr>
						
				</table>
			</td>
		</tr>
	</table>
</body>
</html>