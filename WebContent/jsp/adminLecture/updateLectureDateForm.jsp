<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<html>
<head>
<link rel="stylesheet" type="text/css"
	href="/FirstProject/css/style.css">
<title>강의계획서</title>
</head>
<body>
	<center>
		<h2>강의 계획서</h2>
		<br>
		<form action="updateLectureDatePro.do?sub_code=${vo.sub_code}"
			method="post" name="updateLectureDateForm" onsubmit="return writeSave()">
			<table>
				<tr height="30">
					<td colspan="4" align="right">
						<input type="submit" class="css_btn_class" value="수정 완료">
						<input type="button" class="css_btn_class" value="강의 목록 보기"
							onclick="document.location.href='adminLectureDateForm.do'">
					</td>
				</tr>
				
				<tr height="30">
					<td id="th" width="125">담당 교수</td>
					<td id="th2" width="125">${vo.emp_name }</td>

					<td id="th" width="125">과목코드</td>
					<td id="th2" width="125">${vo.sub_code }</td>
						<input type="hidden" name="sub_code" value="${vo.sub_code}">
					</td>
				</tr>
				
				<tr height="30">
					<td id="th" width="125">강의 과목</td>
					<td id="th2" width="125">${vo.sub_name }</td>
					<td id="th" width="125">담당 학과</td>
					<td id="th2" width="125">${major }</td>
				</tr>
				
				<tr height="30">
					<td id="th" width="125">이수 학점</td>
					<td id="th2" width="125">${vo.sub_hakjum }</td>
					<td id="th" width="125">시 간 표</td>
					<td id="th2" width="125">${vo.sub_time }</td>
				</tr>
				
				<tr>
					<td id="th" width="125">평가 요소</td>
					<td id="th2" width="125"colspan="3" style="word-wrap: break-word">
						<textarea rows="1" cols="95" name="lec_exam">${vo.lec_exam }</textarea>
					</td>
				</tr>
				
				<tr>
					<td id="th" width="125">강의 목표</td>
					<td id="th2" width="125" colspan="3" style="word-wrap: break-word">
						<textarea rows="8" cols="95" name="lec_purpose">${vo.lec_purpose}</textarea>
					</td>
				</tr>
				
				<tr>
					<td id="th" width="125">교과목<br>개요</td>
					<td id="th2" width="125" colspan="3" style="word-wrap: break-word">
						<textarea rows="13" cols="95" name="lec_detail">${vo.lec_detail}</textarea>
					</td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>