<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>종합정보시스템</title>
</head>
<body>
	<b>계절학기 수강신청</b>
	<br>
	<table width="900" align=center>
		<tr>
			<td align="center"><b><Font size=2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2016학년도 여름 계절학기 수강신청</Font></b></td>
		</tr>
	</table>
	<table width="900">
		<tr>
			<td>
				<table width="430" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td align=center>
							<table width="430" border="1" cellpadding="0" cellspacing="0" bordercolordark="white" bordercolorlight="#086E35"><!-- bordercolor="#D0D8FF"  -->
								<tr height="20" align="center" bgcolor="#D0D8FF">
									<td>학번</td>
									<td>학년</td>
									<td>이름</td>
									<td>연락처</td>
								</tr>

								<tr height="20" align="center">
									<td>0991068</td>
									<td>0</td>
									<td>홍길동</td>
									<td>010-1234-5678</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
			<td width=70></td>
			<td><table width="400" border="0" cellpadding="0" cellspacing="0" bordercolordark="white"><!-- bordercolor="#D0D8FF"  -->
					<tr>
						<td><table width="400" border="1" cellpadding="0" cellspacing="0" bordercolordark="white" bordercolorlight="#086E35">
								<tr height="20" align="center" bgcolor="#D0D8FF">
									<td width="100">신청학점</td>
								</tr>
								<tr height="20" align="center">
									<td>0</td>
								</tr>
							</table></td>
					</tr>
				</table></td>
		</tr>
	</table>
	<table width=900 border=1 cellpadding="0" cellspacing="0" bordercolordark="white" bordercolorlight="#086E35"><!-- bordercolor="#D0D8FF"  -->
		<tr bgcolor="#D0D8FF" align="center">
			<td width=25 rowspan="2">No</td>
			<td width=70 rowspan="2">과목코드</td>
			<td width=200 rowspan="2">교과목명<br></td>
			<td width=55 rowspan="2">이수<BR>구분</td>
			<td width=40 rowspan="2">분반</td>
			<td width=40 rowspan="2">학점</td>
			<td width=65 rowspan="2">담당<BR>교수</td>
			<td colspan="4">재수강내역1</td>
			<td colspan="4">재수강내역2</td>
			<td width=50 rowspan="2">비고</font></td>
		</tr>
		<tr bgcolor="#D0D8FF" align="center">
			<td width="40">학년</td>
			<td width="35">학기</td>
			<td width="65">과목</td>
			<td width="35">평점</td>
			<td width="40">학년</td>
			<td width="35">학기</td>
			<td width="65">과목</td>
			<td width="35">평점</td>
		</tr>
		<tr>
			<td colspan="16" height="30" align="center">해당 자료가 존재하지 않습니다. 과목을 선택해주세요</td>
		</tr>	
	</table>
	<br>
	<table>
		<p align="center">
		<input type="text">
		<input type="button" value=" 과목 검색 ">
		&nbsp;&nbsp;&nbsp;
		학과 선택 : <select name="학과 선택">
				<option value="선택">선택</option>
				<option value="공과">공과</option>
				<option value="중국어과">중국어과</option>
				<option value="디자인과">디자인과</option>
				<option value="경영과">경영과</option>
				<option value="etc">etc</option>
			</select>
		</p>	
	</table>
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
			<td>과목1</td>
			<td>3</td>
			<td>전공</td>
			<td>B</td>
		</tr>
		<tr align="center">
			<td>CEO11002</td>
			<td>과목2</td>
			<td>2</td>
			<td>교양</td>
			<td>B</td>
		</tr>
		<tr align="center">
			<td>CEO11003</td>
			<td>과목3</td>
			<td>3</td>
			<td>전공</td>
			<td>B</td>
		</tr>
		<tr align="center">
			<td>CEO11004</td>
			<td>과목4</td>
			<td>2</td>
			<td>교양</td>
			<td>B</td>
		</tr>
		<tr align="center">
			<td>CEO11005</td>
			<td>과목5</td>
			<td>1</td>
			<td>교양</td>
			<td>A</td>
		</tr>
		<tr align="center">
			<td>CEO11006</td>
			<td>과목6</td>
			<td>1</td>
			<td>교양</td>
			<td>A</td>
		</tr>
	</table>
</body>
</html>
