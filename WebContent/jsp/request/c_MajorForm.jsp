<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html >
<html>
<head>
<link rel="stylesheet" type="text/css"	href="/FirstProject/css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name=c_major action="c_MajorPro.do" method="post">
		<b id="th2" height="70">※ 신청 전에 전화번호, E-mail 등 개인정보를 확인하여 주시길 바랍니다. </b></br>
		<b id="th2" height="70">※ 전과 신청은 지도교수님과 상담후 신청하시길 바랍니다. </b>
		<p>
			<c:forEach var="list" items="${ list }">
				<input type="hidden" name="mem_num" value="${mem_num}">
				<table width="950"  align="center">
					<tr height="30">
						<td id="th" width="220">전공</td>
						<td id="th2">${ list.major }</td>
						<td id="th" width="220">성명</td>
						<td id="th2">${ list.stu_name }</td>
					</tr>
					<tr height="30">
						<td id="th" width="220">학년</td>
						<td id="th2">${ list.grade }</td>
						<td id="th" width="220">학번</td>
						<td id="th2">${ list.stu_num }</td>
					</tr>
					<tr height="30">
						<td id="th" width="220">생년월일</td>
						<td id="th2">${ list.stu_birthday }</td>
						<td id="th" width="220">지도교수</td>
						<td id="th2">${ list.stu_professor }</td>
					</tr>
					<tr height="30">
						<td id="th" width="220">이메일</td>
						<td id="th2">${ list.stu_email }</td>
						<td id="th" width="220">휴대전화</td>
						<td id="th2">${ list.tel }</td>
					</tr>
					<tr height="30">
						<td id="th" width="220">전과 희망학과</td>
						<td id="th2" colspan="3">
							<select name="editChangeMajor" >
								<option value="default">학 과 선 택</option>
								<option value="컴퓨터공학">컴퓨터공학</option>
								<option value="인문학과">인문학과</option>
								<option value="시각디자인학과">시각디자인학과</option>
							</select>
						</td>
					</tr>
					<tr>
						<td id="th" width="220" height="150">변경사유</td>
						<td id="th2" colspan="3">
							<input type="text" name="editReasonWhy"  value=" " style="width:98%; height:95%">
						</td>
					</tr>
					<tr height="30">
						<td id="th2" colspan="4">
							<input type="submit" class="css_btn_class" value="신청">
							<input type="reset" class="css_btn_class" value="취소">
						</td>
					</tr>
				</table>
			</c:forEach>
	</form>
</body>
</html>