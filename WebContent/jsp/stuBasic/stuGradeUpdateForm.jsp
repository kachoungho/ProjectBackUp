<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"	href="/FirstProject/css/style.css">


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>th125 JSP Template</title>
</head>
<body>
	<form action="/FirstProject/stuGradeUpdatePro.do">
		<!-- 학생정보 테이블 -->
		<c:forEach var="list" items="${list}">
		<input type="hidden" name = "sub_code" value="${list.sub_code}">
		<input type="hidden" name = "sj_grade" value="${list.sj_grade}">
		<input type="hidden" name = "sj_term" value="${list.sj_term}">
		<input type="hidden" name = "stu_num" value="${list.stu_num}">
		
		<table width="800" border="0" cellspacing="1" cellpadding="2"
			bgcolor="#737373">
			<tr bgcolor="#F5F5F5" align="center">
				<td width="200" bgcolor="#D0D8FF" height="20">과목 코드</td>
				<td width="150">${list.sub_code}</td>
				<td width="200" bgcolor="#D0D8FF" height="20">과 목 명</td>
				<td width="150" colspan="3" >${list.sub_name}</td>
			</tr>
			<tr bgcolor="#F5F5F5" align="center">
				<td bgcolor="#D0D8FF" height="20">학 번</td>
				<td id="center">${list.stu_num}</td>
				<td bgcolor="#D0D8FF">이 름</td>
				<td colspan="3" id="center">${list.stu_name}</td>
			</tr>
			<tr bgcolor="#F5F5F5" align="center">
				<td bgcolor="#D0D8FF">학 년</td>
				<td >${list.sj_grade }</td>
				<td bgcolor="#D0D8FF">학 기</td>
				<td colspan="3" >${list.sj_term}</td>
			</tr>
			<tr bgcolor="#F5F5F5" align="center">
				<td bgcolor="#D0D8FF" height="20">등 급</td>
				<td>
					<input type="text" name="sub_grade" value="${list.sub_grade}"></td>
				<td bgcolor="#D0D8FF">점 수</td>
				<td align="center">
					<input type="text" name="sub_gradevalue" value="${list.sub_gradevalue}"></td>
				<td width="100" bgcolor="#D0D8FF">학 점</td>
				<td>${list.sub_hakjum}</td>
			</tr>
		</table>
		</c:forEach>
		<table>
			<tr>
				<td>
					<input type="submit" value="수정">
				 	<input type="reset" value="재입력">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>