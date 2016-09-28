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
	<form action="i_o_AbsencePro.do" method="post">
		
		<b>※ 휴학 신청은 확실히 결정 후 신청하시길 바랍니다. 신청 취소는 학과 사무실에 문의하세요!</b>
		<p>
			<c:forEach var="list" items="${ list }">
				<input type="hidden" name="mem_num" value="${mem_num}">
				<table width="950" border="0" cellspacing="1" cellpadding="2"
					bgcolor="#737373">
					<tr align="center" bgcolor="#F5F5F5" align="center">
						<td bgcolor="#D0D8FF" width="220">전공</td>
						<td>${ list.major }</td>
						<td bgcolor="#D0D8FF" width="220">성명</td>
						<td>${ list.stu_name }</td>
					</tr>
					<tr align="center" bgcolor="#F5F5F5" align="center">
						<td bgcolor="#D0D8FF">학년</td>
						<td>${ list.grade }</td>
						<td bgcolor="#D0D8FF">학번</td>
						<td>${ list.stu_num }</td>
					</tr>
					<tr align="center" bgcolor="#F5F5F5" align="center">
						<td bgcolor="#D0D8FF">생년월일</td>
						<td>${ list.stu_birthday }</td>
						<td bgcolor="#D0D8FF">지도교수</td>
						<td>${ list.stu_professor }</td>
					</tr>
					<tr align="center" bgcolor="#F5F5F5" align="center">
						<td bgcolor="#D0D8FF">이메일</td>
						<td><input type="text" name="editEmail"
							value="${ list.stu_email }" style="width:90%;"></td>
						<td bgcolor="#D0D8FF">주소</td>
						<td><input type="text" name="editAddress"
							value="${ list.address }" style="width:90%;"></td>
					</tr>
					<tr align="center" bgcolor="#F5F5F5" align="center">
						<td bgcolor="#D0D8FF">휴학구분<br><font size="2">(일반휴학 or 군휴학)</font></td>
						<td><input type="text" name="editAbsence" value=" " style="width:90%;"></td>
						<td bgcolor="#D0D8FF">휴대전화</td>
						<td><input type="text" name="editTel" value="${ list.tel }" style="width:90%;"></td>
					</tr>
				</table>
				<table align="center">
					<tr>
						<td><input type="submit" value="신청"> <!-- 수정하세여~  -->
							<input type="reset" value="취소"> <!-- 수정하세여~  --></td>
					</tr>
				</table>
			</c:forEach>
	</form>
</body>
</html>