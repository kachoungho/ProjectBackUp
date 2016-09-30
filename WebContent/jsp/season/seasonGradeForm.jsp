<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"	href="/FirstProject/css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>th125 JSP Template</title>
</head>
<body>
	<table border="1">
		<c:forEach var="list2" items="${list2}">
			<c:if test="${list2.sj_grade==3}">
				<c:if test="${list2.sj_term==3}">
					<td><a class="btn btn-default3"
						href="/FirstProject/seasonGrade.do?sj_grade=3&sj_term=3">
							3학년 여름 계절학기
					</a></td>
				</c:if>
			</c:if>
			
			<c:if test="${list2.sj_grade==3}">
				<c:if test="${list2.sj_term==4}">
					<td><a class="btn btn-default3"
						href="/FirstProject/seasonGrade.do?sj_grade=3&sj_term=4">
							3학년 겨울 계절학기
					</a></td>
				</c:if>
			</c:if>

			<c:if test="${list2.sj_grade==2}">
				<c:if test="${list2.sj_term==4}">
					<td><a class="btn btn-default3"
						href="/FirstProject/seasonGrade.do?mem_num=${mem_num}&mem_name=${mem_name}&result=${result}&sj_grade=2&sj_term=4">
							2학년 겨울 계절학기
					</a></td>
				</c:if>
			</c:if>

			<c:if test="${list2.sj_grade==2}">
				<c:if test="${list2.sj_term==3}">
					<td><a class="btn btn-default3"
						href="/FirstProject/seasonGrade.do?mem_num=${mem_num}&mem_name=${mem_name}&result=${result}&sj_grade=2&sj_term=3">
							2학년 여름 계절학기
					</a></td>
				</c:if>
			</c:if>

			<c:if test="${list2.sj_grade==1}">
				<c:if test="${list2.sj_term==4}">
					<td><a class="btn btn-default3"
						href="/FirstProject/seasonGrade.do?mem_num=${mem_num}&mem_name=${mem_name}&result=${result}&sj_grade=1&sj_term=4">
							1학년 겨울 계절학기
					</a></td>
				</c:if>
			</c:if>

			<c:if test="${list2.sj_grade==1}">
				<c:if test="${list2.sj_term==3}">
					<td><a class="btn btn-default3"
						href="/FirstProject/seasonGrade.do?mem_num=${mem_num}&mem_name=${mem_name}&result=${result}&sj_grade=1&sj_term=3">
							1학년 여름 계절학기
					</a></td>
				</c:if>
			</c:if>
		</c:forEach>
	</table>

	<table border="1">

		<tr align="center">
			</td>
			<td bgcolor="#FAC209" width="100">수강코드</td>
			<td bgcolor="#FAC209" width="300">과 목 명</td>
			<td bgcolor="#FAC209" width="100">담당교수</td>
			<td bgcolor="#FAC209" width="100">학 점</td>
			<td bgcolor="#FAC209" width="100">이수구분<br>(교양,전공)
			</td>
			<td bgcolor="#FAC209" width="100">등 급</td>
		</tr>
		<c:forEach var="list" items="${list}">
			<tr align="center">
				<td>${list.sub_code}</td>
				<td>${list.sub_name}</td>
				<!-- taglib 형태로 수정필요-->
				<td>${list.emp_name}</td>
				<!-- taglib 형태로 수정필요-->
				<td>${list.sub_hakjum}</td>
				<td>교양</td>
				<td>${list.sub_grade}</td>
				<!-- taglib 형태로 수정필요-->
			</tr>
		</c:forEach>
		<tr align="center">
			<td colspan="6">이의 신청은 여기로 전화하지마<br> 이의 신청따위 받지 않는다
			</td>
		</tr>


	</table>
</body>
</html>