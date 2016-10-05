<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<link rel="stylesheet" type="text/css"	href="/FirstProject/css/style.css">
<title>학생 성적 보기</title>
</head>
<body>
<br><br>
	<form>
		<table align="center">
			<td id="th2"><b>과목 리스트 : ${ count } 과목 </b></td>
		</table>
		<br> <br>

		<c:if test="${ count  == 0 } ">
			<table width="700" align="center">
				<tr>
					<td id="th2">이번 학기에 수강중인 과목이 없습니다.</td>
				</tr>
			</table>
		</c:if>
		<c:if test="${count>0}">
			<table width="700" align="center">
				<tr height="30">
					<td id="th">과목코드</td>
					<td id="th">과목명</td>
					<td id="th">담당교수</td>
					<td id="th">강의 시간</td>

					<c:forEach var="list" items="${ list }">
						<tr height="30">
							<td id="th2">${list.sub_code}</td>
							<td id="th2">
								<a href="/FirstProject/stuGradeDetail.do?sub_code=${ list.sub_code }">${ list.sub_name } </a>
							</td>
							<td id="th2">${list.emp_name}</td>
							<td id="th2">${list.sub_time }</td>
						</tr>
					</c:forEach>
			</table>
		</c:if>
	</form>
</body>
</html>