<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
		<input type="hidden" name="mem_num" value="${mem_num}">
		<input type="hidden" name="mem_name" value="${mem_name}"> 
		<input type="hidden" name="result" value="${result}">
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
						<td height="25" bgcolor="#D0D8FF" width="50" align="center">순번</td>
						<td bgcolor="#D0D8FF" width="60" align="center">학년도</td>
						<td bgcolor="#D0D8FF" width="50" align="center">학기</td>
						<td bgcolor="#D0D8FF" align="center">장학명</td>
						<td bgcolor="#D0D8FF" width="120" align="center">감면수업료</td>
						<td bgcolor="#D0D8FF" width="120" align="center">감면입학금</td>
						<!--td bgcolor="#D0D8FF" width="80" align="center">지급일</td-->
					</tr>
					
			<c:forEach var="list" items="${list}"  varStatus="status">		
							<tr bgcolor="#F5F5F5"  align="center">    
								<td height="25" bgcolor="#D0D8FF" width="30" align="center"><c:out value="${status.index+1 }"/></td>
								<td width="50" align="center">${list.jh_year }</td>
								<td width="30" align="center">${list.jh_term }</td>
								<td align="left">&nbsp;${list.jh_name }</td>
								<td width="80" align="right"><fmt:formatNumber>${list.money_su }</fmt:formatNumber>&nbsp;원</td>
								<td width="80" align="right"><fmt:formatNumber>${list.money_ip }</fmt:formatNumber>&nbsp;원</td>
								<!--td width="80" align="center">null</td-->
							</tr>					
							<c:set value="${tot_su + list.money_su }" var="tot_su"/>
							<c:set value="${tot_ip + list.money_ip }" var="tot_ip"/>
			</c:forEach>				
							<tr bgcolor="#F5F5F5"  align="center">    
								<td height="25" bgcolor="#D0D8FF" colspan="4">합 계 금 액 : </td>
							
								<td width="80" align="right">&nbsp; <fmt:formatNumber><c:out value="${tot_su }"/></fmt:formatNumber> 원</td>
								<td width="80" align="right">&nbsp; <fmt:formatNumber><c:out value="${tot_ip }"/></fmt:formatNumber> 원</td>
								<!--td width="80" align="center">null</td-->
							</tr>					
			
				</table>
			</td>
		</tr>
	</table>
</body>
</html>