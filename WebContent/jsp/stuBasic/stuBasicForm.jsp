<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="/FirstProject/css/style.css">

<script type="text/javascript">
	// 한글 깨짐 처리 해결
	function gogogo2() {
		var frm = document.stuBasicForm;
		frm.acceptCharset = 'utf-8';
		if (document.all)
			document.charset = 'utf-8';
		frm.submit();

		frm.acceptCharset = 'euc-kr';
		if (document.all)
			document.charset = 'euc-kr';
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<br><br>
	<form name="stuBasicForm" action="/FirstProject/stuBasic.do" method="get" accept-charset="">
		<table id="th">
			<td width="100" >
				<select height="30" name="major">
					<option value="default">학 과 선 택</option>
					<option value="com">컴퓨터공학</option>
					<option value="human">인 문 학 과</option>
					<option value="vision">시각디자인학과</option>
				</select>
			</td>
			<td>
				<input type="button" value=" 선택 " onclick="gogogo2()">
			</td>
		</table>
		
		<br>
		<br>
		<c:forEach var="list" items="${ list }">
			<table id="th">
				<tr>
					<td id="th" width="100">학 번</td>
					<td id="th" width="100">이 름</td>
					<td id="th" width="100">비밀번호</td>
					<td id="th" width="100">성 별</td>
					<td id="th" width="100">생년월일</td>
					<td id="th" width="100">상 태</td>
					<td id="th" width="100">담당교수</td>
				</tr>
				
				<tr>
					<td id="th2">${list.stu_num}</td>
					<td id="th2">${list.stu_name}</td>
					<td id="th2">${list.stu_pwd}</td>
					<td id="th2">${list.stu_sex}</td>
					<td id="th2">${list.stu_birthday}</td>
					<td id="th2">${list.stu_state}</td>
					<td id="th2">${list.stu_professor}</td>
				</tr>
				<hr>
				<tr>
					<td id="th" width="100">이 메 일</td>
					<td id="th" width="100">학 과</td>
					<td id="th" width="100">복수전공</td>
					<td id="th" width="100">학 년</td>
					<td id="th" width="100">주 소</td>
					<td id="th" width="100">휴대전화</td>
					<td id="th" width="100">유선전화</td>
				</tr>
				<tr>
					<td id="th2">${list.stu_email}</td>
					<td id="th2">${list.major}</td>
					<td id="th2">${list.submajor}</td>
					<td id="th2">${list.grade}</td>
					<td id="th2">${list.address}</td>
					<td id="th2">${list.tel}</td>
					<td id="th2">${list.home_tel}</td>
				</tr>
			</table>
			<br>
			<br>
		</c:forEach>
	</form>
</body>
</html>