<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<html>
<head>
<link rel="stylesheet" type="text/css"	href="/FirstProject/css/style.css">
<title>게시판</title>
</head>
<body>
	<form>
		<table align="center">
			<td align="center"><b>과목 리스트 : ${ count } 과목 </b></td>
		</table>
		<br> <br>

		<c:if test="${ count  == 0 } ">
			<table width="700" border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td align="center">이번 학기에 수강중인 과목이 없습니다.</td>
				</tr>
			</table>
		</c:if>
		<c:if test="${count>0}">
			<table width="700" border="1" cellpadding="0" cellspacing="0"
				align="center">
				<tr height="30">
					<td bgcolor="skyblue" align="center" width="50">과목코드</td>
					<td bgcolor="skyblue"  align="center" width="50">과목명</td>
					<td bgcolor="skyblue"  align="center" width="50">담당교수</td>
					<td bgcolor="skyblue"  align="center" width="50">강의 시간</td>

					<c:forEach var="list" items="${ list }">
						<tr height="30">
							<td align="center" width="50"><c:out
									value="${list.sub_code}"></c:out></td>
							<td align="center" width="250" ><a
								href="/FirstProject/stuGradeDetail.do?sub_code=${ list.sub_code }">
									${ list.sub_name } </a></td>
							<td align="center" width="100">${list.emp_name}</a></td>
							<td align="center" width="150">${list.sub_time }</td>
						</tr>
					</c:forEach>
			</table>
		</c:if>
	</form>
</body>
</html>