<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>th125 JSP Template</title>
</head>
<body>
	<table border="1">
		<c:forEach var="list2" items="${list2}">
			<c:if test="${list2.sj_grade==3}">
				<c:if test="${list2.sj_term==3}">
					<td><a class="btn btn-default"
						href="/FirstProject/seasonGrade.do?sj_grade=3&sj_term=3">
							2016년 3학년 여름 계절학기
					</a></td>
				</c:if>
			</c:if>
			
			<c:if test="${list2.sj_grade==3}">
				<c:if test="${list2.sj_term==4}">
					<td><a class="btn btn-default"
						href="/FirstProject/seasonGrade.do?sj_grade=3&sj_term=4">
							2016년 3학년 겨울 계절학기
					</a></td>
				</c:if>
			</c:if>

			<c:if test="${list2.sj_grade==2}">
				<c:if test="${list2.sj_term==4}">
					<td><a class="btn btn-default"
						href="/FirstProject/seasonGrade.do?mem_num=${mem_num}&mem_name=${mem_name}&result=${result}&sj_grade=2&sj_term=4">
							2015년 2학년 겨울 계절학기
					</a></td>
				</c:if>
			</c:if>

			<c:if test="${list2.sj_grade==2}">
				<c:if test="${list2.sj_term==3}">
					<td><a class="btn btn-default"
						href="/FirstProject/seasonGrade.do?mem_num=${mem_num}&mem_name=${mem_name}&result=${result}&sj_grade=2&sj_term=3">
							2015년 2학년 여름 계절학기
					</a></td>
				</c:if>
			</c:if>

			<c:if test="${list2.sj_grade==1}">
				<c:if test="${list2.sj_term==4}">
					<td><a class="btn btn-default"
						href="/FirstProject/seasonGrade.do?mem_num=${mem_num}&mem_name=${mem_name}&result=${result}&sj_grade=1&sj_term=4">
							2014년 1학년 겨울 계절학기
					</a></td>
				</c:if>
			</c:if>

			<c:if test="${list2.sj_grade==1}">
				<c:if test="${list2.sj_term==3}">
					<td><a class="btn btn-default"
						href="/FirstProject/seasonGrade.do?mem_num=${mem_num}&mem_name=${mem_name}&result=${result}&sj_grade=1&sj_term=3">
							2014년 1학년 여름 계절학기
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

<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>종합정보시스템</title>
</head>
<body>
<b>계절학기 성적조회</b><br><br>
	<table width="900" align=center>
		<c:forEach var="list" items="${list}">
		<tr>
			<td align="center"><b><Font size=2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<c:if test="$list.sj_term == 3}">
				<td rowspan="2" width="200">${list.sj_year}학년도 여름 계절학기 수강신청</td>
			</c:if>
			<c:if test="$list.sj_term == 4}">
				<td rowspan="2" width="200">${list.sj_year}학년도 겨울 계절학기 수강신청</td>
			</c:if>
			</Font></b></td>
		</tr>
		</c:forEach>
	</table>
	<table width=900 border=1 cellpadding="0" cellspacing="0"  bordercolordark="white" bordercolorlight="#086E35"><!-- bordercolor="#D0D8FF" -->
	</table>
	<br><br>
	<table width=900 border=1 cellpadding="0" cellspacing="0"  bordercolordark="white" bordercolorlight="#086E35">
		<tr bgcolor="SKYBLUE" align="center">		
			<c:if test="$list.sj_term == 3}">
				<td rowspan="2" width="200">${list.sj_grade}학년 여름 계절학기</td>
			</c:if>
			
			<c:if test="$list.sj_term == 4}">
				<td rowspan="2" width="200">${list.sj_grade}학년 겨울 계절학기</td>
			</c:if>
			<td width="100">신청학점</td>
			<td width="100">취득학점</td>
			<td width="100">평 점 계</td>
			<td width="100">평점평균</td>
		</tr>
		<tr align="center">
			<td>${ list.totalHakjum }</td>
			<td>${ list.totalHakjum }</td>
			<td>${ list.avgHakjum }</td>
			<td>${ list.avgHakjum }</td>
		</tr>
	</table>
	<br>
	<table width=900 border=1 cellpadding="0" cellspacing="0"  bordercolordark="white" bordercolorlight="#086E35">
		<tr bgcolor="SKYBLUE" align="center">
			<td width="100">수강코드</td>
			<td width="300">과 목 명</td>
			<td width="100">학   점</td>
			<td width="100">이수구분</td>
			<td width="100">등   급</td>
		</tr>
		<c:forEach var="list" items="${list}">
		<tr align="center">
			<td>${list.sub_code}</td>
			<td>${list.sub_name}</td><!-- taglib 형태로 수정필요-->
			<td>${list.sub_hakjum}</td>
			<td>교양</td>
			<td>${list.sub_grade}</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html> --%>