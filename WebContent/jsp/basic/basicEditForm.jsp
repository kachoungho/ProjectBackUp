<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="/FirstProject/css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>th125 JSP Template</title>
</head>
<body>
	<br>
	<br>
	<form action="/FirstProject/basicEditPro.do">
		<c:forEach var="list" items="${list}">
			<table width="800" align="center">
				<input type="hidden" name="mem_num" value="${mem_num}">
				<tr>
					<td id="th2" height="10" valign="middle" colspan="8"
						bgcolor="white"><strong>개인 정보 수정</strong></td>
				</tr>
				<tr>
					<td width="90" colspan="2" rowspan="10"><img name="sajin"
						width="150" height="170"
						src="/FirstProject/jsp/images/${list.stu_num}.jpg">
					<td id="th" width="250" height="30">성 명</td>
					<td id="th2" width="171">${list.stu_name}</td>
					<td id="th" width="120">전 공 명</td>
					<td id="th2" width="250" colspan="3">${list.major}</td>
				</tr>

				<tr>
					<td id="th" width="120" height="30">생년월일</td>
					<td id="th2" width="171">${list.stu_birthday }</td>
					<td id="th" width="120">학 년</td>
					<td id="th2" width="85">${list.grade }</td>
					<td id="th" width="52">상 태</td>
					<td id="th2" width="101">${list.stu_state}</td>
				</tr>

				<tr>
					<td id="th" width="120" height="30">휴 대 폰</td>
					<td id="th2" width="171"><input type="text" name="editTel"
						value="${list.tel }"></td>
					<td id="th" width="120">이 메 일</td>
					<td id="th2" width="250" colspan="3"><input type="text"
						name="editEmail" value="${list.stu_email }"></td>
				</tr>


				<tr>
					<td id="th" width="120" height="30">유선전화</td>
					<td id="th2" width="171"><input type="text" name="editHomeTel"
						value="${list.home_tel }"></td>
					<td id="th" width="120" height="20">비밀번호</td>
					<td id="th2" width="171" colspan="3"><input type="text"
						name="editPwd" value="${list.stu_pwd }"></td>
				</tr>

				<tr>
					<td id="th" width="68" height="30">주 소</td>
					<td id="th2" width="591" colspan="5" align="left"><input
						size="50px" type="text" name="editAddress"
						value="${list.address }"></td>
				</tr>

				<tr>
					<td colspan="6"><input type="submit" class="css_btn_class" value="수정"> <input
						type="reset"  class="css_btn_class" value="취소"></td>
				</tr>
			</table>
		</c:forEach>
	</form>
</body>
</html>