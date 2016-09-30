<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<form action="/FirstProject/majorApprovePro.do" method="post">

		<c:forEach var="list" items="${ list }">
			<input type="hidden" name="mem_num" value="${mem_num}">
			<input type="hidden" name="change_major" value="${list.change_major}">
			<table width="950" border="0" cellspacing="1" cellpadding="2" bgcolor="#737373">
			
					<tr>
						<td>선택<input type="checkbox" name="checkbox" value="${list.stu_num}"></td>
					</tr>
					
				<tr align="center" bgcolor="#F5F5F5" align="center">
					<td bgcolor="#D0D8FF" width="220">전공</td>
					<td>${ list.major }</td>
					<td bgcolor="#D0D8FF" width="220">성명</td>
					<td>${ list.stu_name }</td>
				</tr>
				<tr align="center" bgcolor="#F5F5F5" align="center">
					<td bgcolor="#D0D8FF" width="220">학년</td>
					<td>${ list.stu_grade }</td>
					<td bgcolor="#D0D8FF" width="220">학번</td>
					<td>${ list.stu_num }</td>
				</tr>
				<tr align="center" bgcolor="#F5F5F5" align="center">
					<td bgcolor="#D0D8FF" width="220">생년월일</td>
					<td>${ list.major }</td>
					<td bgcolor="#D0D8FF" width="220">지도교수</td>
					<td>${ list.stu_professor }</td>
				</tr>
				<tr align="center" bgcolor="#F5F5F5" align="center">
					<td bgcolor="#D0D8FF" width="220">이메일</td>
					<td>${ list.stu_email }</td>
					<td bgcolor="#D0D8FF" width="220">휴대전화</td>
					<td>${ list.tel }</td>
				</tr>
				<tr align="center" bgcolor="#F5F5F5" align="center">
					<td bgcolor="#D0D8FF" width="220">전과 희망학과</td>
					<td colspan="3">${list.change_major}<!-- <input type="text" name="editChangeMajor" value=" " style="width:98%;"> --></td>
				</tr>
				<tr align="center" bgcolor="#F5F5F5" align="center">
					<td bgcolor="#D0D8FF" width="220" height="150">변경사유</td>
					<td colspan="3">${list.reason_why}<!-- <input type="text" name="editReasonWhy"  value=" " style="width:98%; height:95%"> --></td>
				</tr>
			</table>

		</c:forEach>
		<input type="submit" value="승인">

	</form>
</body>
</html>