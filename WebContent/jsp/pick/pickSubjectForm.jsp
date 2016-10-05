<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="/FirstProject/css/style.css">
<meta http-equiv="Refresh">
<title>수강신청 페이지 입니다.</title>

<script LANGUAGE="JavaScript">
	function gradeList() {
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
	}

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
	<form name=pickForm action="/FirstProject/pickSubject.do" method="post"
		accept-charset="">
		<fieldset style="width: 750px">
			<legend>학 년 구 분</legend>
			<table>
				<tr>
					<td id="th" width="60">학 년</td>
					<td id="th2" width="80"><select name="grade"
						onchange="gradeList()">
							<option value="1">1학년</option>
							<option value="2">2학년</option>
							<option value="3">3학년</option>
							<option value="4">4학년</option>
					</select></td>
					<td id="th" width="60">학 과</td>
					<td id="th2" width="150"><select name="major_sel">
							<option value="default">학 과 선 택</option>
							<option value="com">컴퓨터공학</option>
							<option value="human">인 문 학 과</option>
							<option value="vision">시각디자인학과</option>
							<option value="kyo">교 양</option>
					</select></td>
					<td id="th"><input type="submit" class="css_btn_class" value="선택"></td>
				</tr>
			</table>
		</fieldset>
	</form>

	<form name=pickForm1 action="/FirstProject/pickSubject.do"
		method="post" accept-charset="">
		<input type="hidden" name="grade" value="${grade}"> <input
			type="hidden" name="major_sel" value="${major_sel}">
		<fieldset style="width: 750px">
			<legend>수 업 목 록</legend>
			<table>
				<tr>
					<td id="th" width="100">체 크</td>
					<td id="th" width="100">수강 코드</td>
					<td id="th" width="200">과 목 명</td>
					<td id="th" width="100">학 점</td>
					<td id="th" width="100">담당 교수</td>
					<td id="th" width="100">강의 시간</td>
				</tr>
				<c:forEach var="list" items="${ list }">
					<tr>
						<td id="th2"><input type="checkbox" name="check"
							value="${list.sub_code}"></td>
						<td id="th2">${list.sub_code}</td>
						<td id="th2">${list.sub_name}</td>
						<td id="th2">${list.sub_hakjum}</td>
						<td id="th2">${list.emp_name}</td>
						<td id="th2">${list.sub_time}</td>
					</tr>
				</c:forEach>
				<tr>
					<td id="th2" colspan="6"><input type="submit" class="css_btn_class" value="추가"></td>
				</tr>
			</table>

		</fieldset>
	</form>

	<form name=pickForm2 action="/FirstProject/pickSubject.do"
		method="post" accept-charset="">
		<input type="hidden" name="grade" value="${grade}"> <input
			type="hidden" name="major_sel" value="${major_sel}">
		<fieldset style="width: 750px">
			<legend>신 청 목 록</legend>
			<table>
				<tr>
					<td id="th" width="100">체 크</td>
					<td id="th" width="100">수강 코드</td>
					<td id="th" width="200">과 목 명</td>
					<td id="th" width="100">학 점</td>
					<td id="th" width="100">담당 교수</td>
					<td id="th" width="100">강의 시간</td>
				</tr>
				<c:forEach var="picklist" items="${ picklist }">
					<tr>
						<td id="th2"><input type="checkbox" name="check2"
							value="${picklist.sub_code}"></td>
						<td id="th2">${picklist.sub_code}</td>
						<td id="th2">${picklist.sub_name}</td>
						<td id="th2">${picklist.sub_hakjum}</td>
						<td id="th2">${picklist.emp_name}</td>
						<td id="th2">${picklist.sub_time}</td>
					</tr>
				</c:forEach>
				<tr>
					<td id="th2" colspan="6"><input type="submit" class="css_btn_class" value="삭제">
					</td>
				</tr>
			</table>
		</fieldset>

	</form>

</body>
</html>