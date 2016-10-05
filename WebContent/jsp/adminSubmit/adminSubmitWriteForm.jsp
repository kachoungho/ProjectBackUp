<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<html>
<head>
<link rel="stylesheet" type="text/css"
	href="/FirstProject/css/style.css">
<title>게시판</title>
</head>
<body>
	<br>
	<br>
	<form action = "adminSubmitWritePro.do" method="post" name = "adminSubmitWriteForm" onsubmit="return writeSave()">
		<table id="th" align="center">
			<td id="th2"><b>[ <c:out value="${sub_name}" /> ] 과목의 과제 작성
			</b></td>
		</table>
		<table align="right">
			<td id="td">
				<input type = "submit" value = "과제 등록">
				<input type= "reset" value = "다시 작성">
				<input type = "button" value = "과제 목록보기" 
				onclick="document.location.href='adminSubmitListForm.do?sub_code=${sub_code}&sub_name=${sub_name}'">				
			</td>							
		</table>
		<br> <br>
		<table id="th" width="700" border="1" cellpadding="0" cellspacing="0"
			align="center">
			<tr height="30">
				<td id="th">주 차</td>
				<td id="th">과 제 명</td>
			</tr>
			<tr height="30">
				<td id="th2" rowspan="3">
				<select name="submit_week" >
								<option value="default">선택</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
								<option value="13">13</option>
								<option value="14">14</option>
								<option value="15">15</option>
				</select><br><br>
				주차</td>
				<td id="th2"><input size="93" type="text" name="submit_title" placeholder="※ 과제명을 입력하여주세요."></td>
				</td>
			</tr>
			<tr height="30">
				<td id="th" >과제 내용</td>
			</tr>
			<tr height="30">
				<td id="th2" ><textarea rows="12" cols="95" name = "submit_content" 
				placeholder="※ 과제 작성시에 '주차'수 확인을 부탁립니다."></textarea>
				</td>
			</tr>
		</table>
		<br> <br>
		<input type="hidden" name="sub_code" value="${sub_code}">
	</form>
</body>
</html>
