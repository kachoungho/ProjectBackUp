<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<html>
<head>
<link rel="stylesheet" type="text/css"
	href="/FirstProject/css/style.css">
<title>게시판</title>
</head>
<body>
	<br>
	<br>
	<form>
		<table align="center">
			<td id="th2"><b>현 학기 강의 중인 과목 ( 강의 수 : ${ count } 과목 )</b></td>
		</table>
		<br> <br>

		<c:if test="${ count  == 0 } ">
			<table width="700" align="center">
				<tr>
					<td align="center">이번 학기에 수강중인 과목이 없습니다.</td>
				</tr>
			</table>
		</c:if>
		<c:if test="${count>0}">
			<table width="700" align="center">
				<tr height="30">
					<td id="th">번 호</td>
					<td id="th">과 목 명</td>
					<td id="th">과목구분</td>
					<td id="th">시 간 표</td>
					<td id="th">학 점</td>

					<c:forEach var="list" items="${ list }" varStatus="status">
						<tr height="30">
							<td id="th2">${status.count }</td>
							<td id="th2">
								<a href="adminSubmitListForm.do?sub_code=${ list.sub_code }&sub_name=${ list.sub_name }&week=default">${ list.sub_name }</a>
							</td>
							<td id="th2">
								<c:if test="${list.sub_hakjum<3 }">
									<c:out value="교양" />
								</c:if> 
								<c:if test="${list.sub_hakjum>2 }">
									<c:out value="전공" />
								</c:if>
							</td>
							<td id="th2">${list.sub_time }</td>
							<td id="th2">${list.sub_hakjum }</td>
						</tr>
					</c:forEach>
			</table>
		</c:if>
	</form>
</body>
</html>