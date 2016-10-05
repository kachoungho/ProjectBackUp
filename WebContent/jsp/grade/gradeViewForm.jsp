<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<br><br>
	<table width="80%" align="center">
		<tr>
			<td id="th" rowspan="3" width="20%">종 합</td>
			<td id="th" width="10%">총신청학점</td>
			<td id="th2" width="30%">${ totalhakjum }</td>
			<td id="th" width="10%">총취득학점</td>
			<td id="th2" width="30%">${ totalhakjum }</td>
		</tr>
		<tr>
			<td id="th">평 점 계</td>
			<td id="th2">${ totalavg }</td>
			<td id="th">총평점평균</td>
			<td id="th2">${ totalavg }</td>
		</tr>
		<tr>
			<td id="th">교양 총 학점</td>
			<td id="th2" >${ totalkyo }</td>
			<td id="th" >전공 총 학점</td>
			<td id="th2" >${ totalnotkyo }</td>
		</tr>
	</table>
	<br>
	<br>

	<table align="center">
		<tr>
			<c:forEach var="list2" items="${list2}">
				<!-- 1학년 부분 -->
				<c:if test="${list2.sj_grade == 1}">
					<c:if test="${list2.sj_term == 1}">
						<td id="th2"><a class="btn btn-default4"
							href="/FirstProject/gradeView.do?sj_grade=1&sj_term=1">1학년
								1학기</a></td>
					</c:if>
				</c:if>
				<c:if test="${list2.sj_grade == 1}">
					<c:if test="${list2.sj_term == 3}">
						<td id="th2"><a class="btn btn-default4"
							href="/FirstProject/gradeView.do?sj_grade=1&sj_term=3">1학년 여름
								계절학기</a></td>
					</c:if>
				</c:if>
			</c:forEach>
			<c:forEach var="list2" items="${list2}">
				<c:if test="${list2.sj_grade == 1}">
					<c:if test="${list2.sj_term == 2}">
						<td id="th2"><a class="btn btn-default4"
							href="/FirstProject/gradeView.do?sj_grade=1&sj_term=2">1학년
								2학기</a></td>
					</c:if>
				</c:if>
				<c:if test="${list2.sj_grade == 1}">
					<c:if test="${list2.sj_term == 4}">
						<td id="th2"><a class="btn btn-default4"
							href="/FirstProject/gradeView.do?sj_grade=1&sj_term=4">1학년 겨울
								계절학기</a></td>
					</c:if>
				</c:if>
			</c:forEach>
			<c:forEach var="list2" items="${list2}">
				<!-- 2학년 부분 -->
				<c:if test="${list2.sj_grade == 2}">
					<c:if test="${list2.sj_term == 1}">
						<td id="th2"><a class="btn btn-default4"
							href="/FirstProject/gradeView.do?sj_grade=2&sj_term=1">2학년
								1학기</a></td>
					</c:if>
				</c:if>
				<c:if test="${list2.sj_grade == 2}">
					<c:if test="${list2.sj_term == 3}">
						<td id="th2"><a class="btn btn-default4"
							href="/FirstProject/gradeView.do?sj_grade=2&sj_term=3">2학년 여름
								계절학기</a></td>
					</c:if>
				</c:if>
			</c:forEach>
			<c:forEach var="list2" items="${list2}">
				<c:if test="${list2.sj_grade == 2}">
					<c:if test="${list2.sj_term == 2}">
						<td id="th2"><a class="btn btn-default4"
							href="/FirstProject/gradeView.do?sj_grade=2&sj_term=2">2학년
								2학기</a></td>
					</c:if>
				</c:if>
				<c:if test="${list2.sj_grade == 2}">
					<c:if test="${list2.sj_term == 4}">
						<td id="th2"><a class="btn btn-default4"
							href="/FirstProject/gradeView.do?sj_grade=2&sj_term=4">2학년 겨울
								계절학기</a></td>
					</c:if>
				</c:if>
			</c:forEach>
		</tr>
		<tr>
			<c:forEach var="list2" items="${list2}">
				<!-- 3학년 부분 -->
				<c:if test="${list2.sj_grade == 3}">
					<c:if test="${list2.sj_term == 1}">
						<td id="th2"><a class="btn btn-default4"
							href="/FirstProject/gradeView.do?sj_grade=3&sj_term=1">3학년
								1학기</a></td>
					</c:if>
				</c:if>
				<c:if test="${list2.sj_grade == 3}">
					<c:if test="${list2.sj_term == 3}">
						<td id="th2"><a class="btn btn-default4"
							href="/FirstProject/gradeView.do?sj_grade=3&sj_term=3">3학년 여름
								계절학기</a></td>
					</c:if>
				</c:if>
			</c:forEach>
			<c:forEach var="list2" items="${list2}">
				<c:if test="${list2.sj_grade == 3}">
					<c:if test="${list2.sj_term == 2}">
						<td id="th2"><a class="btn btn-default4"
							href="/FirstProject/gradeView.do?sj_grade=3&sj_term=2">3학년
								2학기</a></td>
					</c:if>
				</c:if>
				<c:if test="${list2.sj_grade == 3}">
					<c:if test="${list2.sj_term == 4}">
						<td id="th2"><a class="btn btn-default4"
							href="/FirstProject/gradeView.do?sj_grade=3&sj_term=4">3학년 겨울
								계절학기</a></td>
					</c:if>
				</c:if>
			</c:forEach>
			<c:forEach var="list2" items="${list2}">
				<!-- 4학년 부분 -->
				<c:if test="${list2.sj_grade == 4}">
					<c:if test="${list.sj_term == 1}">
						<td id="th2"><a class="btn btn-default4"
							href="/FirstProject/gradeView.do?sj_grade=4&sj_term=1">4학년
								1학기</a></td>
					</c:if>
				</c:if>
				<c:if test="${list2.sj_grade == 4}">
					<c:if test="${list2.sj_term == 3}">
						<td id="th2"><a class="btn btn-default4"
							href="/FirstProject/gradeView.do?sj_grade=4&sj_term=3">4학년 여름
								계절학기</a></td>
					</c:if>
				</c:if>
			</c:forEach>
			<c:forEach var="list2" items="${list2}">
				<c:if test="${list2.sj_grade == 4}">
					<c:if test="${list2.sj_term == 2}">
						<td id="th2"><a class="btn btn-default4"
							href="/FirstProject/gradeView.do?sj_grade=4&sj_term=2">4학년
								2학기</a></td>
					</c:if>
				</c:if>
				<c:if test="${list2.sj_grade == 4}">
					<c:if test="${list2.sj_term == 4}">
						<td id="th2"><a class="btn btn-default4"
							href="/FirstProject/gradeView.do?sj_grade=4&sj_term=4">4학년 겨울
								계절학기</a></td>
					</c:if>
				</c:if>
			</c:forEach>
		</tr>
	</table>
	<br>
	<br>


	<table align="center" width="700">
		<tr>
			<td id="th" rowspan="2" width="200">${sj_grade}학년 ${sj_term}학기</td>
			<td id="th" width="100">신청학점</td>
			<td id="th" width="100">취득학점</td>
			<td id="th" width="100">평 점 계</td>
			<td id="th" width="100">평점평균</td>
		</tr>
		<tr>
			<td id="th2">${hakjum}</td>
			<td id="th2">${hakjum}</td>
			<td id="th2"><fmt:formatNumber value="${avg}" pattern=".00" /></td>
			<td id="th2"><fmt:formatNumber value="${avg}" pattern=".00" /></td>
		</tr>
	</table>
	<br>

	<table align="center" width="700">
		<tr>
			<td id="th" width="100">수강코드</td>
			<td id="th" width="300">과 목 명</td>
			<td id="th" width="100">학 점</td>
			<td id="th" width="100">이수구분</td>
			<td id="th" width="100">등 급</td>
		</tr>
		<c:forEach var="list" items="${list}">
			<tr>
				<td id="th2">${list.sub_code}</td>
				<td id="th2">${list.sub_name}</td>
				<td id="th2">${list.sub_hakjum}</td>
				<c:if test="${list.sub_hakjum == 3}">
					<td id="th2">전공</td>
				</c:if>
				<c:if test="${list.sub_hakjum == 2}">
					<td id="th2">교양</td>
				</c:if>
				<td id="th2">${list.sub_grade }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>