<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
<title>강의계획서</title>
</head>
<body>
	<center>
		<h2>강의 계획서</h2><br>
		<form>
			<table width="70%" border="1" cellspacing="2" cellpadding="0"
				align="center">

				<tr height="30">
					<td align="center" width="125" bgcolor="skyblue">담당 교수</td>
					<td align="center" width="125">${vo.emp_name }</td>

					<td align="center" width="125" bgcolor="skyblue">과목코드</td>
					<td align="center" width="125">${vo.sub_code }</td>
				</tr>
				<tr height="30">
					<td align="center" width="125" bgcolor="skyblue">수강 과목</td>
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
						style="word-wrap: break-word"><pre>${vo.lec_exam }</pre></td>
				</tr>			
				<tr>
					<td align="center" width="125" bgcolor="skyblue">강의 목표</td>
					<td align="center" width="500" colspan="3"
						style="word-wrap: break-word"><pre>${vo.lec_purpose }</pre></td>
				</tr>			
				<tr>
					<td align="center" width="125" bgcolor="skyblue">교과목<br>개요</td>
					<td align="left" width="500" colspan="3"
						style="word-wrap: break-word"><pre>${vo.lec_detail }</pre></td>
				</tr>
<%-- 				<tr height="30">
					<td colspan="4" align="right" >
						<input type="button" value = "글수정" onclick="document.location.href='updateForm.do?num=${num}&pageNum=${pageNum}'"> 
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="button" value = "글삭제" onclick="document.location.href='deleteForm.do?num=${num}&pageNum=${pageNum}'">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <input type = "button"  value = "답글작성" onclick="document.location.href='writeForm.do?num=${num}&ref=${ref}&re_step=${re_step}&re_level=${re_level}'">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 	<input type = "button" value = "목록 보기" onclick="document.location.href='list.do?pageNum=${pageNum}'"> 

					</td>
				</tr> --%>
			</table>
		</form>
	</center>
</body>
</html>