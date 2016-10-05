<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"	href="/FirstProject/css/style.css">
<meta http-equiv="Refresh" >
<title>계절학기 수강신청 페이지 입니다.</title>

<script LANGUAGE="JavaScript">
	function go() {
		var frm1 = document.pickForm1;
		frm1.acceptCharset = 'utf-8';
		if (document.all)
			document.charset = 'utf-8';
		frm1.submit();

		frm1.acceptCharset = 'euc-kr';
		if (document.all)
			document.charset = 'euc-kr';
	}
</script>

</head>
<body>
	<form name=pickForm1 action="/FirstProject/seasonSubjcet.do" method="post" accept-charset="">
		<fieldset>
			<legend id="th2">수 업 목 록</legend>

			<table>
				<tr>
					<td id="th" width="100">체  크</td>
					<td id="th" width="100">수강 코드</td>
					<td id="th" width="200">과 목 명</td>
					<td id="th" width="100">학 점</td>
					<td id="th" width="100">담당 교수</td>
					<td id="th" width="100">강의 시간</td>
				</tr>
				<c:forEach var="list" items="${ list }">
					<tr>
						<td id="th2"><input type="checkbox" name="check" value="${list.sub_code}"></td>
						<td id="th2">${list.sub_code}</td>
						<td id="th2">${list.sub_name}</td>
						<td id="th2">${list.sub_hakjum}</td>
						<td id="th2">${list.emp_name}</td>
						<td id="th2">${list.sub_time}</td>
					</tr>
				</c:forEach>
				<tr>
					<td id="th2" colspan="6" ><input type="submit" value="추가"></td>
				</tr>				
			</table>

		</fieldset>
	</form>
	
	<form name=pickForm2 action="/FirstProject/seasonSubjcet.do" method="post"
		accept-charset="">
		<%-- <input type="hidden"  name="grade" value="${grade}">
		<input type="hidden" name="major_sel" value="${major_sel}"> --%>
		<fieldset>
			<legend id="th2">신 청 목 록</legend>
			<table border="1">
				<tr>
					<td id="th" width="100">체  크</td>
					<td id="th" width="100">수강 코드</td>
					<td id="th" width="200">과 목 명</td>
					<td id="th" width="100">학 점</td>
					<td id="th" width="100">담당 교수</td>
					<td id="th" width="100">강의 시간</td>
				</tr>
				<c:forEach var="picklist" items="${ picklist }">
					<tr>
						<td id="th2"><input type="checkbox" name="check2" value="${picklist.sub_code}"></td>
						<td id="th2">${picklist.sub_code}</td>
						<td id="th2">${picklist.sub_name}</td>
						<td id="th2">${picklist.sub_hakjum}</td>
						<td id="th2">${picklist.emp_name}</td>
						<td id="th2">${picklist.sub_time}</td>
					</tr>
				</c:forEach>
				<tr>
					<td id="th2" colspan="6" ><input type="submit" value="삭제"></td>
				</tr>	
			</table>
		</fieldset>
	</form>
</body>
</html>