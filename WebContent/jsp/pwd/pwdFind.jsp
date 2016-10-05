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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="pwdFindResult.do" method="post" name="pwdFind" onsubmit="return writeSave()">
		<br><br>
		<table id="th">
			<td id="th2"><b>비밀 번호 찾기</b></td>
		</table>
		<br><br>
		
			<table width="80%">
				<tr height="30">
					<td id="th" width="100">학(사)번</td>
					<td id="th2"><input type="text" name="mem_num"  
					placeholder="※ 학생 6자리, 교직원 5자리." style="width:95%;"></td>
				</tr>
				<tr height="30">
					<td id="th" width="100">성 명</td>
					<td id="th2"><input type="text" name="mem_name"
					placeholder="※ 공백 없이 입력해주세요." style="width:95%;"></td>
					</td>
				</tr>
				<tr height="30">
					<td id="th">E-Mail 주소</td>
					<td id="th2"><input type="text" name="email"
					placeholder="※ 등록되어있는 e-mail 주소" style="width:95%;"></td>
					</td>				
				</tr>
				<tr height="30">
					<td id="th">핸드폰 번호</td>
					<td id="th2"><input type="text" name="tel"
					placeholder="※ ex) 010-0000-0000" style="width:95%;"></td>
					</td>				
				</tr>
				<tr>
					<td id="th2" align="right" colspan="2">
						<input type="submit" class="css_btn_class"  value="확인">
						<input type="reset"  value="취소">
					</td>
				</tr>
			</table>
		</form>
</body>
</html>