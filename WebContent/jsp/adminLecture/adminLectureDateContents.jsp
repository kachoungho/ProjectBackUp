<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="/FirstProject/css/style.css">
<html>
<head>
<title>강의계획서</title>
</head>
<body>
	<center>
		<h2>강의 계획서</h2>
		<br>
		<form>
			<table>
				<tr height="50">
					<td id="th" width="100">담당 교수</td>
					<td id="th2" width="100">${vo.emp_name }</td>
					<td id="th" width="100">과목코드</td>
					<td id="th2" width="100">${vo.sub_code }</td>
				</tr>

				<tr height="30">
					<td id="th">강의 과목</td>
					<td id="th2">${vo.sub_name }</td>
					<td id="th">담당 학과</td>
					<td id="th2">${major }</td>
				</tr>

				<tr height="30">
					<td id="th">이수 학점</td>
					<td id="th2">${vo.sub_hakjum }</td>

					<td id="th">시 간 표</td>
					<td id="th2">${vo.sub_time }</td>
				</tr>

				<tr>
					<td id="th">평가 요소</td>
					<td id="th2" colspan="3" style="word-wrap: break-word"> ${vo.lec_exam } </td>
				</tr>
				<tr>
					<td id="th">강의 목표</td>
					<td id="th2" colspan="3" style="word-wrap: break-word"><pre id="th3" >${vo.lec_purpose }</pre>
					</td>
				</tr>
				<tr>
					<td id="th">교과목<br>개요
					</td>
					<td id="th2" colspan="3" style="word-wrap: break-word" id="th3" ><pre id="th3" >${vo.lec_detail }</pre>
					</td>
				</tr>
				
				<tr height="30">
					<td id="th2" colspan="4" align="right">
						<input type="button" class="css_btn_class" value="강의 계획서 수정" 
						onclick="document.location.href='updateLectureDateForm.do?sub_code=${vo.sub_code}'">
						<input type="button" class="css_btn_class" value="강의 목록 보기"
						onclick="document.location.href='adminLectureDateForm.do'">
					</td>
				</tr>
			</table>
		</form>
	</center>
	
</body>
</html>