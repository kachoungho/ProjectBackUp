<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<html>
<head>
<link rel="stylesheet" type="text/css"	href="/FirstProject/css/style.css">
<title>강의계획서</title>
</head>
<body>
	<center>
		<h2>강의 계획서</h2><br>
	<form action = "updateLectureDatePro.do?sub_code=${vo.sub_code}" method="post" name = "updateLectureDateForm" onsubmit="return writeSave()">
			<table width="70%" border="1" cellspacing="2" cellpadding="0"
				align="center">
 				<tr height="30">
	 				<td colspan="4" align="right" >
						<input type = "submit" value = "수정 완료">
						<input type="button" value = "강의 목록 보기" onclick="document.location.href='adminLectureDateForm.do'">  						
						
					</td>
				</tr>
				<tr height="30">
					<td align="center" width="125" bgcolor="skyblue">담당 교수</td>
					<td align="center" width="125">${vo.emp_name }</td>

					<td align="center" width="125" bgcolor="skyblue">과목코드</td>
					<td align="center" width="125">${vo.sub_code }</td>
					<input type="hidden" name="sub_code" value="${vo.sub_code}"></td>
					
				</tr>
				<tr height="30">
					<td align="center" width="125" bgcolor="skyblue">강의 과목</td>
					<td align="center" width="125">${vo.sub_name }</td>
					
					<td align="center" width="125" bgcolor="skyblue">담당 학과</td>
					<td align="center" width="125">${major } </td>
				</tr>
				<tr height="30">
					<td align="center" width="125" bgcolor="skyblue">이수 학점</td>
					<td align="center" width="125">${vo.sub_hakjum }</td>
					
					<td align="center" width="125" bgcolor="skyblue">시 간 표</td>
					<td align="center" width="125">${vo.sub_time } </td>
				</tr>
				<tr>
					<td align="center" width="125" bgcolor="skyblue">평가 요소</td>
					<td align="center" width="500" colspan="3"
						style="word-wrap: break-word"><textarea rows="1" cols="95" name = "lec_exam">${vo.lec_exam }</textarea>
					</td>
				</tr>			
				<tr>
					<td align="center" width="125" bgcolor="skyblue">강의 목표</td>
					<td align="center" width="500" colspan="3"
						style="word-wrap: break-word">
						<textarea rows="8" cols="95" name = "lec_purpose">${vo.lec_purpose}</textarea></td>
				</tr>			
				<tr>
					<td align="center" width="125" bgcolor="skyblue">교과목<br>개요</td>
					<td align="left" width="500" colspan="3"
						style="word-wrap: break-word">
						<textarea rows="13" cols="95" name = "lec_detail">${vo.lec_detail}</textarea>
					</td>
				</tr>

			</table>
		</form>
	</center>
</body>
</html>