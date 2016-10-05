<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="/FirstProject/css/style.css">
<script>
	function changeImg() {
		var element = document.getElementById('memo');
		element.style.opacity = "0";
		element.style.visibility = "visible";
		element.style.filter = 'alpha(opacity=0)';
	}

	function normalImg() {
		var element = document.getElementById('memo');
		element.style.opacity = "1";
		element.style.filter = 'alpha(opacity=100)';
	}
</script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>강의 개설 페이지</title>
</head>
<body>
	<form name="createForm" action="/FirstProject/lectureCreatePro.do"
		method="post">
		<br> <br>
		<table align="center" onmouseover="normalImg()" onmouseout="changeImg()">
			<tr>
				<td id="th" colspan="2" align="center">강 의 개 설</td>
				<td class="font" rowspan="6" width="500" id="memo"
					style="visibility: hidden;">
					<br><br>강의 개설시 참고 사항<br><br>
					학과 구분 : 컴퓨터공학 : COM / 인문학과 : HUM <br>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;시각디자인학과
					: DES / 교양 : KYO<br><br> 학년 구분 : 학과구분 코드 바로 뒤 1, 2, 3, 4 로 구분 <br>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ex)
					COM100 : 컴퓨터공학 1학년 과목<br><br>
					학  점 : 전공과목 : 3학점 / 교양과목 : 2학점<br><br>
					강의 시간 : 월요일 1~3교수 수업의 경우<br>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					'MON123' 으로 표기 				
				</td>
			</tr>

			<tr>
				<td id="th" width="150">과목 코드</td>
				<td id="th2" width="150"><input type="text" name="sub_code">
				</td>
			</tr>

			<tr>
				<td id="th" width="150">과 목 명</td>
				<td id="th2" width="150"><input type="text" name="sub_name"></td>
			</tr>

			<tr>
				<td id="th" width="150">학 점</td>
				<td id="th2" width="150"><input type="text" name="sub_hakjum"></td>
			</tr>

			<tr>
				<td id="th" width="150">담당 교수</td>
				<td id="th2" width="150"><input type="text" name="emp_name">
				</td>
			</tr>

			<tr>
				<td id="th" width="150">강의 시간</td>
				<td id="th2" width="150"><input type="text" name="sub_time">
				</td>
			</tr>

			<tr>
				<td id="th2" width="300" colspan="2"><input type="submit" class="css_btn_class"
					value=" 개 설 "></td>
			</tr>
		</table>
	</form>
</body>
</html>