<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="/FirstProject/css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>th125 JSP Template</title>
</head>
<body>
	<br>
	<table cellspacing="0" cellpadding="0">
		<tr align="center">
			<td id="th2" width="150"><a class="btn btn-default3"
				href="/FirstProject/basic.do">기본 사항</a></td>
			<td id="th2" width="150"><a class="btn btn-default3"
				href="/FirstProject/scholarship.do">장학 사항</a></td>
			<td id="th2" width="150"><a class="btn btn-default3"
				href="/FirstProject/adviser.do">지도 교수</a></td>
		</tr>
	</table>
	<br>
	<br>
	<br>
	
	<!-- 장학사항 -->
	<table width="670" cellspacing="1" cellpadding="3" height="20" >
		<tr>
			<td id="th2" height="10" valign="middle" colspan="6" bgcolor="white"><strong>장학사항</strong></td>
		</tr>
		<tr>
			<td id="th" height="25" width="50">순번</td>
			<td id="th" width="60">학년도</td>
			<td id="th" width="50">학기</td>
			<td id="th">장학명</td>
			<td id="th" width="120">감면수업료</td>
			<td id="th" width="120">감면입학금</td>
		</tr>

		<c:forEach var="list" items="${list}" varStatus="status">
			<tr>
				<td id="th" height="25" width="30">
					<c:out value="${status.index+1 }" /></td>
				<td id="th2" width="50">${list.jh_year }</td>
				<td id="th2" width="30">${list.jh_term }</td>
				<td id="th2">${list.jh_name }</td>
				<td id="th2" width="80"><fmt:formatNumber>${list.money_su }</fmt:formatNumber>&nbsp;원</td>
				<td id="th2" width="80"><fmt:formatNumber>${list.money_ip }</fmt:formatNumber>&nbsp;원</td>
			</tr>
			<c:set value="${tot_su + list.money_su }" var="tot_su" />
			<c:set value="${tot_ip + list.money_ip }" var="tot_ip" />
		</c:forEach>
		<tr>
			<td id="th" height="25" colspan="4">합 계 금 액</td>

			<td id="th2" width="80">
				<fmt:formatNumber><c:out value="${tot_su }" /></fmt:formatNumber> 원
			</td>
			<td id="th2" width="80">
				<fmt:formatNumber><c:out value="${tot_ip }" /></fmt:formatNumber> 원
			</td>
		</tr>
	</table>
</body>
</html>