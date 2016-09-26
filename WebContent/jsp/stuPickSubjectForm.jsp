<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<style type="text/css">

html, body {
	width: 100%;
	height: 100%;
	margin: 0;
	padding: 0;
	font-family: '1훈고딕굴림';'
	
}

#td{
	display: block;
	margin: 0 auto;
	width: 100%;
	height: 100%;
	line-height: 20px;
	border: 2px solid #1E3449;
}

#td2{/* 
	display: block;
	margin: 0 auto; */
	line-height: 20px;
	border: 2px solid #1E3449;
	text-align: center;
}

#table1 {
	display: block;
	margin: 0 auto;
	width: 100%;
	height: 100%;
	line-height: 20px;
	border: 2px solid #1E3449;
}

#table2 {
	display: block;
	margin: 0 auto;
	width: 200px;
	height: 100%;
	line-height: 20px;
	border: 2px solid #1E3449;
}
</style>

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

	<form  name="stuBasicForm" action="/FirstProject/stuPickSubject.do"
		method="get" accept-charset="">
		<input type="hidden" name="mem_num" value="${mem_num}"> <input
			type="hidden" name="mem_name" value="${mem_name}"> <input
			type="hidden" name="result" value="${result}">
		<table  id="table2"  border="1">
			<td id="td" ><select name="major">
					<option value="default">학 과 선 택</option>
					<option value="com">컴퓨터공학</option>
					<option value="human">인 문 학 과</option>
					<option value="vision">시각디자인학과</option>
			</select></td>
			<td ><input type="button" value=" 선택 " onclick="gogogo2()">
			</td>
		</table>
		<br>
		<br>
		<c:forEach var="list" items="${ list }">
			<table border="1" >
				<tr>
					<td id="td2" bgcolor="skyblue" width="100">학  번</td>
					<td id="td2" bgcolor="skyblue" width="100">이  름</td>
					<td id="td2" bgcolor="skyblue" width="100">학  과</td>
					<td id="td2" bgcolor="skyblue" width="100">수강 코드</td>
					<td id="td2" bgcolor="skyblue" width="150">과  목</td>
					<td id="td2" bgcolor="skyblue" width="100">학  점</td>
					<td id="td2" bgcolor="skyblue" width="100">담당 교수</td>
					<td id="td2" bgcolor="skyblue" width="100">강의 시간</td>
				</tr>
				<tr>
					<td id="td2" >${list.stu_num}</td>
					<td id="td2" >${list.stu_name}</td>
					<td id="td2">${list.major}</td>
					<td id="td2" >${list.sub_code}</td>
					<td id="td2" >${list.sub_name}</td>
					<td id="td2">${list.sub_hakjum}</td>
					<td id="td2">${list.emp_name}</td>
					<td id="td2">${list.sub_time}</td>
				</tr>
				<hr>
			</table>
			<br>
			<br>
		</c:forEach>
	</form>
</body>
</html>