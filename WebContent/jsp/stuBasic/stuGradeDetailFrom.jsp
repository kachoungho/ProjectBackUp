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
	<form action="/FirstProject/stuGradeUpdate.do" method="post">
		<table align="center">
			<td id="th2">수강중인 인원 : ${ count } 명</td>
		</table>
		<br> <br>
		<c:if test="${ count  == 0 } ">
			<table width="700" border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td align="center">이번 학기에 수강중인 인원이 없습니다.</td>
				</tr>
			</table>
		</c:if>
		<c:if test="${count>0}">
			<table id="th" width="700" cellpadding="0" cellspacing="0" align="center">
				<tr height="30">
					<td id="th">체 크</td>
					<td id="th">학 번</td>
					<td id="th">이 름</td>
					<td id="th">학 년</td>
					<td id="th">학 기</td>
					<td id="th">과목 코드</td>
					<td id="th">과 목 명</td>
					<td id="th">학 점</td>
					<td id="th">점 수(등급)</td>
					<td id="th">성적 수정</td>
				</tr>
				<c:forEach var="list" items="${ list }">
					<input type="hidden" name="sj_grade" value="${list.sj_grade}">
					<input type="hidden" name="sj_term" value="${list.sj_term}">
					<input type="hidden" name="stu_num" value="${list.stu_num}">
					<tr height="30">
						<td id="th2">
							<input type="checkbox" name="check" value="${list.sub_code}">
						</td>
						<td id="th2">${list.stu_num}</td>
						<td id="th2">${list.stu_name}</td>
						<td id="th2">${list.sj_grade}</td>
						<td id="th2">${list.sj_term}</td>
						<td id="th2">${list.sub_code}</td>
						<td id="th2">${list.sub_name}</td>
						<td id="th2">${list.sub_hakjum}학점</td>
						<td id="th2">${list.sub_gradevalue}(${list.sub_grade})</td>
						<td id="th2">
							<input type="submit" value="수정">
						</td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
	</form>
</body>
</html>