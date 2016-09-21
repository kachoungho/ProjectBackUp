<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>종합정보시스템</title>
</head>
<body>
<b>계절학기 성적조회</b><br><br>
	<table width="900" align=center>
		<tr>
			<td align="center"><b><Font size=2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2016학년도 여름 계절학기 수강신청</Font></b></td>
		</tr>
	</table>
	<table width=900 border=1 cellpadding="0" cellspacing="0"  bordercolordark="white" bordercolorlight="#086E35"><!-- bordercolor="#D0D8FF" -->
		<tr bgcolor="#D0D8FF" align="center">
			<td rowspan="3" width="60">종합</td>
			<td width="100">계절학기<br>신청학점</font></td>
			<td width="100" bgcolor="white">${ 1 }</td>
			<td width="100">계절학기<br>취득학점</font></td>
			<td width="100" bgcolor="white">${ 1 }</td>
			<td width="100">계절학기<br>평점계</font></td>
			<td width="100" bgcolor="white">${ 1 }</td>
			<td width="100">계절학기<br>평점평균</font></td>
			<td width="100" bgcolor="white">${ 1 }</td>
		</tr>
		<tr bgcolor="#D0D8FF" align="center">
			<td><font color="black">1학년<br>교양필수</font></td>
			<td><font color="black">1학년<br>전공필수</font></td>
			
			<td><font color="black">2학년<br>교양필수</font></td>
			<td><font color="black">2학년<br>전공필수</font></td>
			
			<td><font color="black">3학년<br>교양필수</font></td>
			<td><font color="black">3학년<br>전공필수</font></td>
			
			<td><font color="black">4학년<br>교양필수</font></td>
			<td><font color="black">4학년<br>전공필수</font></td>
		</tr>
		<tr bgcolor="#D0D8FF" align="center">
			<td bgcolor="white"><font color="black">${ 1 }</font></td>
			<td bgcolor="white"><font color="black">${ 1 }</font></td>
			
			<td bgcolor="white"><font color="black">${ 2 }</font></td>
			<td bgcolor="white"><font color="black">${ 2 }</font></td>
			
			<td bgcolor="white"><font color="black">${ 3 }</font></td>
			<td bgcolor="white"><font color="black">${ 3 }</font></td>
			
			<td bgcolor="white"><font color="black">${ 4 }</font></td>
			<td bgcolor="white"><font color="black">${ 4 }</font></td>
		</tr>
	</table>
	<br><br>
	<table width=900 border=1 cellpadding="0" cellspacing="0"  bordercolordark="white" bordercolorlight="#086E35">
		<tr bgcolor="#D0D8FF" align="center">
			<td rowspan="2" width="200">1학년 여름 계절학기</td>
			<td width="100">신청학점</td>
			<td width="100">취득학점</td>
			<td width="100">평 점 계</td>
			<td width="100">평점평균</td>
			<td width="100">석   차</td>
		</tr>
		<tr align="center">
			<td>${ 1 }</td>
			<td>${ 2 }</td>
			<td>${ 3 }</td>
			<td>${ 4 }</td>
			<td>${ 5 }</td>
		</tr>
	</table>
	<br>
	<table width=900 border=1 cellpadding="0" cellspacing="0"  bordercolordark="white" bordercolorlight="#086E35">
		<tr bgcolor="#D0D8FF" align="center">
			<td width="100">수강코드</td>
			<td width="300">과 목 명</td>
			<td width="100">학   점</td>
			<td width="100">이수구분</td>
			<td width="100">등   급</td>
		</tr>
		<tr align="center">
			<td>CEO11001</td>
			<td>과목1</td><!-- taglib 형태로 수정필요-->
			<td>3</td>
			<td>전공</td><!-- taglib 형태로 수정필요-->
			<td>B</td><!-- taglib 형태로 수정필요-->
		</tr>
		<tr align="center">
			<td>CEO11002</td>
			<td>과목2</td><!-- taglib 형태로 수정필요-->
			<td>2</td>
			<td>교양</td><!-- taglib 형태로 수정필요-->
			<td>B</td><!-- taglib 형태로 수정필요-->
		</tr>
		<tr align="center">
			<td>CEO11003</td>
			<td>과목3</td><!-- taglib 형태로 수정필요-->
			<td>3</td>
			<td>전공</td><!-- taglib 형태로 수정필요-->
			<td>B</td><!-- taglib 형태로 수정필요-->
		</tr>
		<tr align="center">
			<td>CEO11004</td>
			<td>과목4</td><!-- taglib 형태로 수정필요-->
			<td>2</td>
			<td>교양</td><!-- taglib 형태로 수정필요-->
			<td>B</td><!-- taglib 형태로 수정필요-->
		</tr>
	</table>
</body>
</html>