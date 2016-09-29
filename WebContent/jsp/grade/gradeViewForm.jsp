<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>th125 JSP Template</title>
</head>
<body>
	<table border="1">
		<tr align="center">
			<td rowspan="3" width="60">종합</td>
			<td width="150" bgcolor="skyblue"><font color="white">총신청학점</font></td>
			<td width="150">${ totalhakjum }</td>
			<td width="150" bgcolor="skyblue"><font color="white">총취득학점</font></td>
			<td width="150">${ totalhakjum }</td>
		</tr>
		<tr align="center">
			<td width="150" bgcolor="skyblue"><font color="white">평 점 계</font></td>
			<td width="150">${ totalavg }</td>
			<td width="150" bgcolor="skyblue"><font color="white">총평점평균</font></td>
			<td width="150">${ totalavg }</td>
		</tr>
		<tr align="center">
			<td width="150" bgcolor="skyblue"><font color="white">교양 총 학점</font></td>
			<td width="150">${ totalkyo }</td>
			<td width="150" bgcolor="skyblue"><font color="white">전공 총 학점</font></td>
			<td width="150">${ totalnotkyo }</td>
		</tr>
	</table>
	<br>
	<br>

	<table border="1">
		<tr>
			<c:forEach var="list2" items="${list2}">
				<!-- 1학년 부분 -->
				<c:if test="${list2.sj_grade == 1}">
					<c:if test="${list2.sj_term == 1}">
						<td><a href="/FirstProject/gradeView.do?sj_grade=1&sj_term=1">1학년
								1학기</a></td>
					</c:if>
				</c:if>
				<c:if test="${list2.sj_grade == 1}">
					<c:if test="${list2.sj_term == 3}">
						<td><a href="/FirstProject/gradeView.do?sj_grade=1&sj_term=3">1학년
								여름 계절학기</a></td>
					</c:if>
				</c:if>
			</c:forEach>
			<c:forEach var="list2" items="${list2}">
				<c:if test="${list2.sj_grade == 1}">
					<c:if test="${list2.sj_term == 2}">
						<td><a href="/FirstProject/gradeView.do?sj_grade=1&sj_term=2">1학년
								2학기</a></td>
					</c:if>
				</c:if>
				<c:if test="${list2.sj_grade == 1}">
					<c:if test="${list2.sj_term == 4}">
						<td><a href="/FirstProject/gradeView.do?sj_grade=1&sj_term=4">1학년
								겨울 계절학기</a></td>
					</c:if>
				</c:if>
			</c:forEach>
			<c:forEach var="list2" items="${list2}">
				<!-- 2학년 부분 -->
				<c:if test="${list2.sj_grade == 2}">
					<c:if test="${list2.sj_term == 1}">
						<td><a href="/FirstProject/gradeView.do?sj_grade=2&sj_term=1">2학년
								1학기</a></td>
					</c:if>
				</c:if>
				<c:if test="${list2.sj_grade == 2}">
					<c:if test="${list2.sj_term == 3}">
						<td><a href="/FirstProject/gradeView.do?sj_grade=2&sj_term=3">2학년
								여름 계절학기</a></td>
					</c:if>
				</c:if>
			</c:forEach>
			<c:forEach var="list2" items="${list2}">
				<c:if test="${list2.sj_grade == 2}">
					<c:if test="${list2.sj_term == 2}">
						<td><a href="/FirstProject/gradeView.do?sj_grade=2&sj_term=2">2학년
								2학기</a></td>
					</c:if>
				</c:if>
				<c:if test="${list2.sj_grade == 2}">
					<c:if test="${list2.sj_term == 4}">
						<td><a href="/FirstProject/gradeView.do?sj_grade=2&sj_term=4">2학년
								겨울 계절학기</a></td>
					</c:if>
				</c:if>
			</c:forEach>
			<c:forEach var="list2" items="${list2}">
				<!-- 3학년 부분 -->
				<c:if test="${list2.sj_grade == 3}">
					<c:if test="${list2.sj_term == 1}">
						<td><a href="/FirstProject/gradeView.do?sj_grade=3&sj_term=1">3학년
								1학기</a></td>
					</c:if>
				</c:if>
				<c:if test="${list2.sj_grade == 3}">
					<c:if test="${list2.sj_term == 3}">
						<td><a href="/FirstProject/gradeView.do?sj_grade=3&sj_term=3">3학년
								여름 계절학기</a></td>
					</c:if>
				</c:if>
			</c:forEach>
			<c:forEach var="list2" items="${list2}">
				<c:if test="${list2.sj_grade == 3}">
					<c:if test="${list2.sj_term == 2}">
						<td><a href="/FirstProject/gradeView.do?sj_grade=3&sj_term=2">3학년
								2학기</a></td>
					</c:if>
				</c:if>
				<c:if test="${list2.sj_grade == 3}">
					<c:if test="${list2.sj_term == 4}">
						<td><a href="/FirstProject/gradeView.do?sj_grade=3&sj_term=4">3학년
								겨울 계절학기</a></td>
					</c:if>
				</c:if>
			</c:forEach>
			<c:forEach var="list2" items="${list2}">
				<!-- 4학년 부분 -->
				<c:if test="${list2.sj_grade == 4}">
					<c:if test="${list.sj_term == 1}">
						<td><a href="/FirstProject/gradeView.do?sj_grade=4&sj_term=1">4학년
								1학기</a></td>
					</c:if>
				</c:if>
				<c:if test="${list2.sj_grade == 4}">
					<c:if test="${list2.sj_term == 3}">
						<td><a href="/FirstProject/gradeView.do?sj_grade=4&sj_term=3">4학년
								여름 계절학기</a></td>
					</c:if>
				</c:if>
			</c:forEach>
			<c:forEach var="list2" items="${list2}">
				<c:if test="${list2.sj_grade == 4}">
					<c:if test="${list2.sj_term == 2}">
						<td><a href="/FirstProject/gradeView.do?sj_grade=4&sj_term=2">4학년
								2학기</a></td>
					</c:if>
				</c:if>
				<c:if test="${list2.sj_grade == 4}">
					<c:if test="${list2.sj_term == 4}">
						<td><a href="/FirstProject/gradeView.do?sj_grade=4&sj_term=4">4학년
								겨울 계절학기</a></td>
					</c:if>
				</c:if>
			</c:forEach>
		</tr>
	</table>
	<br>
	<br>


	<table border="1">
		<tr align="center">
			<td rowspan="2" width="200" bgcolor="#57AAA6">${sj_grade}학년
				${sj_term}학기</td>
			<td bgcolor="skyblue" width="100">신청학점</td>
			<td bgcolor="skyblue" width="100">취득학점</td>
			<td bgcolor="skyblue" width="100">평 점 계</td>
			<td bgcolor="skyblue" width="100">평점평균</td>
		</tr>
		<tr align="center">
			<td>${hakjum}</td>
			<td>${hakjum}</td>
			<td><fmt:formatNumber value="${avg}" pattern=".00" /></td>
			<td><fmt:formatNumber value="${avg}" pattern=".00" /></td>
		</tr>
	</table>
	<br>

	<table border="1">
		<tr align="center">
			<td bgcolor="skyblue" width="100">수강코드</td>
			<td bgcolor="skyblue" width="300">과 목 명</td>
			<td bgcolor="skyblue" width="100">학 점</td>
			<td bgcolor="skyblue" width="100">이수구분</td>
			<td bgcolor="skyblue" width="100">등 급</td>
		</tr>
		<c:forEach var="list" items="${list}">
			<tr align="center">
				<td>${list.sub_code}</td>
				<td>${list.sub_name}</td>
				<td>${list.sub_hakjum}</td>
				<c:if test="${list.sub_hakjum == 3}">
					<td>전공</td>
				</c:if>
				<c:if test="${list.sub_hakjum == 2}">
					<td>교양</td>
				</c:if>
				<td>${list.sub_grade }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>