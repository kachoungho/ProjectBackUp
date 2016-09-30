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
	/* function gradeList() {
		gradeform = document.pickForm;
		if (gradeform.grade.value == '1') {
			gradeform.major_sel.length = 5;
			gradeform.major_sel.options[0].text = '학 과 선 택';
			gradeform.major_sel.options[0].value = 'default';
			gradeform.major_sel.options[1].text = '컴퓨터공학';
			gradeform.major_sel.options[1].value = 'com';
			gradeform.major_sel.options[2].text = '인 문 학 과';
			gradeform.major_sel.options[2].value = 'human';
			gradeform.major_sel.options[3].text = '시각디자인학과';
			gradeform.major_sel.options[3].value = 'vision';
			gradeform.major_sel.options[4].text = '교  양';
			gradeform.major_sel.options[4].value = 'kyo';

		} else if (gradeform.grade.value == '2') {
			gradeform.major_sel.length = 5;
			gradeform.major_sel.options[0].text = '학 과 선 택';
			gradeform.major_sel.options[0].value = 'default';
			gradeform.major_sel.options[1].text = '컴퓨터공학';
			gradeform.major_sel.options[1].value = 'com';
			gradeform.major_sel.options[2].text = '인 문 학 과';
			gradeform.major_sel.options[2].value = 'human';
			gradeform.major_sel.options[3].text = '시각디자인학과';
			gradeform.major_sel.options[3].value = 'vision';
			gradeform.major_sel.options[4].text = '교  양';
			gradeform.major_sel.options[4].value = 'kyo';

		} else if (gradeform.grade.value == '3') {
			gradeform.major_sel.length = 4;
			gradeform.major_sel.options[0].text = '학 과 선 택';
			gradeform.major_sel.options[0].value = 'default';
			gradeform.major_sel.options[1].text = '컴퓨터공학';
			gradeform.major_sel.options[1].value = 'com';
			gradeform.major_sel.options[2].text = '인 문 학 과';
			gradeform.major_sel.options[2].value = 'human';
			gradeform.major_sel.options[3].text = '시각디자인학과';
			gradeform.major_sel.options[3].value = 'vision';

		} else if (gradeform.grade.value == '4') {
			gradeform.major_sel.length = 4;
			gradeform.major_sel.options[0].text = '학 과 선 택';
			gradeform.major_sel.options[0].value = 'default';
			gradeform.major_sel.options[1].text = '컴퓨터공학';
			gradeform.major_sel.options[1].value = 'com';
			gradeform.major_sel.options[2].text = '인 문 학 과';
			gradeform.major_sel.options[2].value = 'human';
			gradeform.major_sel.options[3].text = '시각디자인학과';
			gradeform.major_sel.options[3].value = 'vision';
		}
	} */

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
<!-- 
	<form name=pickForm action="/FirstProject/pickSubject.do" method="post"
		accept-charset="">
		<fieldset>
			<legend>학 년 구 분</legend>
			<table border="1">
				<tr>
					<td bgcolor=skyblue>학 년</td>
					<td><select name="grade" onchange="gradeList()">
							<option value="1">1학년</option>
							<option value="2">2학년</option>
							<option value="3">3학년</option>
							<option value="4">4학년</option>
					</select></td>
					<td bgcolor=skyblue>학 과</td>
					<td><select name="major_sel">
							<option value="default">학 과 선 택</option>
							<option value="com">컴퓨터공학</option>
							<option value="human">인 문 학 과</option>
							<option value="vision">시각디자인학과</option>
							<option value="kyo">교  양</option>
					</select></td>
					<td><input type="submit" value="선택"></td>
				</tr>
			</table>
		</fieldset>
	</form> -->

	<form name=pickForm1 action="/FirstProject/seasonSubjcet.do" method="post"
		accept-charset="">
		<%-- <input type="hidden" name="grade" value="${grade}">
		<input type="hidden" name="major_sel" value="${major_sel}"> --%>
		
		<fieldset>
			<legend>수 업 목 록</legend>

			<table border="1">
				<tr>
					<td bgcolor="skyblue" width="100">체  크</td>
					<td bgcolor="skyblue" width="100">수강 코드</td>
					<td bgcolor="skyblue" width="200">과 목 명</td>
					<td bgcolor="skyblue" width="100">학 점</td>
					<td bgcolor="skyblue" width="100">담당 교수</td>
					<td bgcolor="skyblue" width="100">강의 시간</td>
					
				</tr>
				<c:forEach var="list" items="${ list }">
					<tr>
						<td><input type="checkbox" name="check" value="${list.sub_code}"></td>
						<td>${list.sub_code}</td>
						<td>${list.sub_name}</td>
						<td>${list.sub_hakjum}</td>
						<td>${list.emp_name}</td>
						<td>${list.sub_time}</td>
					</tr>
				</c:forEach>
				<tr>
					<td colspan="6" ><input type="submit" value="추가"></td>
				</tr>				
			</table>

		</fieldset>
	</form>
	
	<form name=pickForm2 action="/FirstProject/seasonSubjcet.do" method="post"
		accept-charset="">
		<%-- <input type="hidden"  name="grade" value="${grade}">
		<input type="hidden" name="major_sel" value="${major_sel}"> --%>
		<fieldset>
			<legend>신 청 목 록</legend>
			<table border="1">
				<tr>
					<td bgcolor="skyblue" width="100">체  크</td>
					<td bgcolor="skyblue" width="100">수강 코드</td>
					<td bgcolor="skyblue" width="200">과 목 명</td>
					<td bgcolor="skyblue" width="100">학 점</td>
					<td bgcolor="skyblue" width="100">담당 교수</td>
					<td bgcolor="skyblue" width="100">강의 시간</td>
				</tr>
				<c:forEach var="picklist" items="${ picklist }">
					<tr>
						<td><input type="checkbox" name="check2" value="${picklist.sub_code}"></td>
						<td>${picklist.sub_code}</td>
						<td>${picklist.sub_name}</td>
						<td>${picklist.sub_hakjum}</td>
						<td>${picklist.emp_name}</td>
						<td>${picklist.sub_time}</td>
					</tr>
				</c:forEach>
				<tr>
					<td colspan="6" ><input type="submit" value="삭제"></td>
				</tr>	
			</table>
		</fieldset>
	</form>
</body>
</html>