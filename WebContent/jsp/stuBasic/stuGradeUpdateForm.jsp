<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/FirstProject/css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>th125 JSP Template</title>
</head>
<body>
<br><br>
	<form action="/FirstProject/stuGradeUpdatePro.do">
		<!-- 학생정보 테이블 -->
		<c:forEach var="list" items="${list}">
			<input type="hidden" name="sub_code" value="${list.sub_code}">
			<input type="hidden" name="sj_grade" value="${list.sj_grade}">
			<input type="hidden" name="sj_term" value="${list.sj_term}">
			<input type="hidden" name="stu_num" value="${list.stu_num}">

			<table id="th" align="center" width="800" cellspacing="1" cellpadding="2">
				<tr>
					<td id="th" height="30">과목 코드</td>
					<td id="th2">${list.sub_code}</td>
					<td id="th">과 목 명</td>
					<td id="th2"colspan="3">${list.sub_name}</td>
				</tr>
				<tr>
					<td id="th" height="30">학 번</td>
					<td id="th2">${list.stu_num}</td>
					<td id="th">이 름</td>
					<td id="th2" colspan="3">${list.stu_name}</td>
				</tr>
				<tr>
					<td id="th" height="30">학 년</td>
					<td id="th2">${list.sj_grade }</td>
					<td id="th">학 기</td>
					<td id="th2" colspan="3">${list.sj_term}</td>
				</tr>
				<tr>
					<td id="th" height="30">등 급</td>
					<td id="th2">
						<input type="text" name="sub_grade" value="${list.sub_grade}"></td>
					<td id="th">점 수</td>
					<td id="th2">
						<input type="text" name="sub_gradevalue" value="${list.sub_gradevalue}">
					</td>
					<td id="th">학 점</td>
					<td id="th2" width="50">${list.sub_hakjum}</td>
				</tr>
				
				<tr>
					<td id="th2" colspan="8">
						<input type="submit" value="수정"> 
						<input type="reset" value="재입력">
					</td>
				</tr>
			</table>
		</c:forEach>
	</form>
</body>
</html>