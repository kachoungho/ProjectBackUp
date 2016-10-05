<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
<link rel="stylesheet" type="text/css"	href="/FirstProject/css/style.css">
<title>강의계획서</title>
</head>
<body>
	<center><br>
	<table id="th" align="center">
		 <td id="th2" >강의 계획서</td><!-- 현학기 듣는 과목숫자. -->
	 </table><br><br>
		<form>
			<table width="70%" cellspacing="2" cellpadding="0"
				align="center">

				<tr height="30">
					<td id="th" align="center" width="125" bgcolor="skyblue">담당 교수</td>
					<td id="th2" align="center" width="125">${vo.emp_name }</td>

					<td id="th" align="center" width="125" bgcolor="skyblue">과목코드</td>
					<td id="th2" align="center" width="125">${vo.sub_code }</td>
				</tr>
				<tr height="30">
					<td id="th" align="center" width="125" bgcolor="skyblue">수강 과목</td>
					<td id="th2" align="center" width="125">${vo.sub_name }</td>
					
					<td id="th" align="center" width="125" bgcolor="skyblue">담당 학과</td>
					<td id="th2" align="center" width="125">${major } </td>
				</tr>
				<tr height="30">
					<td id="th" align="center" width="125" bgcolor="skyblue">이수 학점</td>
					<td id="th2" align="center" width="125">${vo.sub_hakjum }</td>
					
					<td id="th" align="center" width="125" bgcolor="skyblue">시 간 표</td>
					<td id="th2" align="center" width="125">${vo.sub_time } </td>
				</tr>
				<tr>
					<td id="th" align="center" width="125" bgcolor="skyblue">평가 요소</td>
					<td id="th2" align="center" width="500" colspan="3"
						style="word-wrap: break-word">${vo.lec_exam }</td>
				</tr>			
				<tr>
					<td id="th" align="center" width="125" bgcolor="skyblue">강의 목표</td>
					<td id="th2" align="center" width="500" colspan="3"
						style="word-wrap: break-word">${vo.lec_purpose }</td>
				</tr>			
				<tr>
					<td id="th" align="center" width="125" bgcolor="skyblue">교과목<br>개요</td>
					<td id="th2" align="left" width="500" colspan="3"
						style="word-wrap: break-word">${vo.lec_detail }</td>
				</tr>

			</table>
		</form>
	</center>
</body>
</html>