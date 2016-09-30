<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"	href="/FirstProject/css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>강의 수정 페이지</title>
</head>
<body>
	<c:forEach var="list" items="${list}">
		<form name="createForm" action="/FirstProject/lectureUpdateProc.do"
			method="post">
			<input type="hidden" name="sub_code1" value="${list.sub_code}">
			<br> <br>
			<table border="1">
				<tr>
					<td colspan="2" align="center">강 의 수 정</td>
				</tr>
				<tr>
					<td width="150" align="center">과목 코드</td>
					<td width="150" align="center"><input type="text"
						name="sub_code" value="${list.sub_code}"></td>
				</tr>
				<tr>
					<td width="150" align="center">과 목 명</td>
					<td width="150" align="center"><input type="text"
						name="sub_name" value="${list.sub_name}"></td>
				</tr>
				<tr>
					<td width="150" align="center">학 점</td>
					<td width="150" align="center"><input type="text"
						name="sub_hakjum" value="${list.sub_hakjum}"></td>
				</tr>
				<tr>
					<td width="150" align="center">담당 교수</td>
					<td width="150" align="center"><input type="text"
						name="emp_name" value="${list.emp_name}"></td>
				</tr>
				<tr>
					<td width="150" align="center">강의 시간</td>
					<td width="150" align="center"><input type="text"
						name="sub_time" value="${list.sub_time}"></td>
				</tr>
			</table>
			<br>
			<table>
				<tr>
					<td width="300" colspan="2" align="center"><input
						type="submit" value="수정완료"><input type="reset"
						value="다시입력"></td>
				</tr>
			</table>
		</form>
	</c:forEach>
</body>
</html>