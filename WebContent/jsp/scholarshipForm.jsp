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
				href="/FirstProject/basic.do?mem_num=${mem_num}&mem_name=${mem_name}&result=${result}">기본
					사항</a></td>
			<td width="90"><a
				href="/FirstProject/registerChange.do?mem_num=${mem_num}&mem_name=${mem_name}&result=${result}">학적
					변동</a></td>
			<td width="130"><a
				href="/FirstProject/multiMajorStatus.do?mem_num=${mem_num}&mem_name=${mem_name}&result=${result}">다전공
					이수 현황</a></td>
			<td width="90"><a
				href="/FirstProject/scholarship.do?mem_num=${mem_num}&mem_name=${mem_name}&result=${result}">장학
					사항</a></td>
			<td width="90"><a
				href="/FirstProject/adviser.do?mem_num=${mem_num}&mem_name=${mem_name}&result=${result}">지도
					교수</a></td>
			<td width="90"><a
				href="/FirstProject/registerStatus.do?mem_num=${mem_num}&mem_name=${mem_name}&result=${result}">등록
					사항</a></td>
		</tr>
	</table>
	<br>
	<br>
	<br>

	<table border="0" width="98%" cellspacing="0" cellpadding="0" valign="top" align="center">
		<tr>
			<td height="5"></td>
		</tr>
		<tr>
			<td height="10">&nbsp;</td>
		</tr>	
		<tr>
			<td height="10" valign="middle"><strong>장학사항</strong></td>
		</tr>					
		<tr>
			<td>
				<table  width="670" bgcolor="#737373" cellspacing="1" cellpadding="3" height="20" valign="center">
					<!-- 장학사항 -->
					<tr> 
						<td height="25" bgcolor="#D0D8FF" width="30" align="center">순번</td>
						<td bgcolor="#D0D8FF" width="50" align="center">학년도</td>
						<td bgcolor="#D0D8FF" width="30" align="center">학기</td>
						<td bgcolor="#D0D8FF" align="center">장학명</td>
						<td bgcolor="#D0D8FF" width="110" align="center">감면수업료</td>
						<td bgcolor="#D0D8FF" width="110" align="center">감면입학금</td>
						<td bgcolor="#D0D8FF" width="110" align="center">감면일정금액</td>
						<!--td bgcolor="#D0D8FF" width="80" align="center">지급일</td-->
					</tr>
					
							<tr bgcolor="#F5F5F5"  align="center">    
								<td height="25" bgcolor="#D0D8FF" width="30" align="center">1</td>
								<td width="50" align="center">2010</td>
								<td width="30" align="center">1</td>
								<td align="left">&nbsp;근로장학(학기중)</td>
								<td width="80" align="right">   1,232,000&nbsp;</td>
								<td width="80" align="right">0&nbsp;</td>
								<td width="80" align="right">0&nbsp;</td>
								<!--td width="80" align="center">null</td-->
							</tr>
							
							<tr bgcolor="#F5F5F5"  align="center">    
								<td height="25" bgcolor="#D0D8FF" width="30" align="center">2</td>
								<td width="50" align="center">2012</td>
								<td width="30" align="center">2</td>
								<td align="left">&nbsp;근로장학(학기중)</td>
								<td width="80" align="right">   1,216,000&nbsp;</td>
								<td width="80" align="right">0&nbsp;</td>
								<td width="80" align="right">0&nbsp;</td>
								<!--td width="80" align="center">null</td-->
							</tr>
							
							<tr bgcolor="#F5F5F5"  align="center">    
								<td height="25" bgcolor="#D0D8FF" width="30" align="center">3</td>
								<td width="50" align="center">2012</td>
								<td width="30" align="center">2</td>
								<td align="left">&nbsp;근로봉사(방중)</td>
								<td width="80" align="right">     736,000&nbsp;</td>
								<td width="80" align="right">0&nbsp;</td>
								<td width="80" align="right">0&nbsp;</td>
								<!--td width="80" align="center">null</td-->
							</tr>
							
							<tr bgcolor="#F5F5F5"  align="center">    
								<td height="25" bgcolor="#D0D8FF" width="30" align="center">4</td>
								<td width="50" align="center">2013</td>
								<td width="30" align="center">1</td>
								<td align="left">&nbsp;근로장학(학기중)</td>
								<td width="80" align="right">   1,248,000&nbsp;</td>
								<td width="80" align="right">0&nbsp;</td>
								<td width="80" align="right">0&nbsp;</td>
								<!--td width="80" align="center">null</td-->
							</tr>
							
							<tr bgcolor="#F5F5F5"  align="center">    
								<td height="25" bgcolor="#D0D8FF" width="30" align="center">5</td>
								<td width="50" align="center">2014</td>
								<td width="30" align="center">1</td>
								<td align="left">&nbsp;근로장학(학기중)</td>
								<td width="80" align="right">   1,240,200&nbsp;</td>
								<td width="80" align="right">0&nbsp;</td>
								<td width="80" align="right">0&nbsp;</td>
								<!--td width="80" align="center">null</td-->
							</tr>
							
							<tr bgcolor="#F5F5F5"  align="center">    
								<td height="25" bgcolor="#D0D8FF" width="30" align="center">6</td>
								<td width="50" align="center">2014</td>
								<td width="30" align="center">1</td>
								<td align="left">&nbsp;근로봉사(방중)</td>
								<td width="80" align="right">     779,100&nbsp;</td>
								<td width="80" align="right">0&nbsp;</td>
								<td width="80" align="right">0&nbsp;</td>
								<!--td width="80" align="center">null</td-->
							</tr>
							
							<tr bgcolor="#F5F5F5"  align="center">    
								<td height="25" bgcolor="#D0D8FF" width="30" align="center">7</td>
								<td width="50" align="center">2014</td>
								<td width="30" align="center">2</td>
								<td align="left">&nbsp;근로봉사(방중)</td>
								<td width="80" align="right">     715,500&nbsp;</td>
								<td width="80" align="right">0&nbsp;</td>
								<td width="80" align="right">0&nbsp;</td>
								<!--td width="80" align="center">null</td-->
							</tr>
							
							<tr bgcolor="#F5F5F5"  align="center">    
								<td height="25" bgcolor="#D0D8FF" width="30" align="center">8</td>
								<td width="50" align="center">2014</td>
								<td width="30" align="center">2</td>
								<td align="left">&nbsp;교육장학금</td>
								<td width="80" align="right">     121,500&nbsp;</td>
								<td width="80" align="right">0&nbsp;</td>
								<td width="80" align="right">0&nbsp;</td>
								<!--td width="80" align="center">null</td-->
							</tr>
							
							<tr bgcolor="#F5F5F5"  align="center">    
								<td height="25" bgcolor="#D0D8FF" width="30" align="center">9</td>
								<td width="50" align="center">2015</td>
								<td width="30" align="center">1</td>
								<td align="left">&nbsp;근로장학(학기중)</td>
								<td width="80" align="right">   1,809,600&nbsp;</td>
								<td width="80" align="right">0&nbsp;</td>
								<td width="80" align="right">0&nbsp;</td>
								<!--td width="80" align="center">null</td-->
							</tr>
							
							<tr bgcolor="#F5F5F5"  align="center">    
								<td height="25" bgcolor="#D0D8FF" width="30" align="center">10</td>
								<td width="50" align="center">2015</td>
								<td width="30" align="center">1</td>
								<td align="left">&nbsp;교육장학금</td>
								<td width="80" align="right">      42,000&nbsp;</td>
								<td width="80" align="right">0&nbsp;</td>
								<td width="80" align="right">0&nbsp;</td>
								<!--td width="80" align="center">null</td-->
							</tr>
							
				</table>
			</td>
		</tr>
		<tr>
			<td height="10" valign="middle">&nbsp;</td>
		</tr>	
		<tr>
			<td height="30" valign="middle"><strong>IT 해외연수</strong></td>
		</tr>						
		<tr>
			<td>
				<table  width="670" bgcolor="#737373" cellspacing="1" cellpadding="3" height="20" valign="center">	
						<!-- IT 해외연수 -->
						<tr> 
							<td height="25" bgcolor="#D0D8FF" width="30" align="center">순번</td>
							<td bgcolor="#D0D8FF" width="100" align="center">참가구분</td>
							<td bgcolor="#D0D8FF" width="100" align="center">참가학기수</td>
							<td bgcolor="#D0D8FF" width="100" align="center">참가시작일</td>
							<td bgcolor="#D0D8FF" width="100" align="center">참가종료일</td>
							<td bgcolor="#D0D8FF" align="center">비고</td>
						</tr>
						
						    <tr bgcolor="#F5F5F5"  align="center">    
								<td height="25" width="30" align="center">1</td>
								<td align="center" colspan="5">내용 없습니다.</td>
							</tr>
						    
				</table>
			</td>
		</tr>
	</table>
</body>
</html>