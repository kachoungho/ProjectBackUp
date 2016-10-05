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
	<form>
		<table id="th" align="center">
			<td id="th2"><b>[ <c:out value="${sub_name}"/> ] 과목의 각 주차별 강의자료 목록</b></td>
		</table>
		<table align="right">
			<td id="td"><input type="button" value="강의자료 작성" 
			onclick="document.location.href='adminLectureMaterialWriteForm.do?sub_code=${sub_code }&sub_name=${sub_name}'">
			<input type = "button" value = "과목 목록보기" 
				onclick="document.location.href='adminLectureMaterial.do'">				
			</td>
		</table>
		<br> <br>
				<c:if test="${count<1 }">
			<table id="th" width="700" border="1" cellpadding="0" cellspacing="0"
				align="center">
				<tr height="30">
					<td id="th" width="100">주 차</td>
					<td id="th">자 료 명</td>
				</tr>
				<tr height="30">
					<td id="th2" rowspan="3"></td>
					<td id="th2">해당 과목의 강의자료가 아직 업로드되지 않았습니다.</a>
					</td>
				</tr>
				</table>
		</c:if>
		<c:forEach var="list" items="${ list }" varStatus="status">
			<table id="th" width="700" border="1" cellpadding="0" cellspacing="0" align="center">
				<tr height="30">
					<td id="th" width = "100">주 차</td>
					<td id="th">자 료 명</td>
				</tr>
						<tr height="30">
							<td id="th2" rowspan="3">${list.submit_week }  주차</td>
							<td id="th2" >
								${ list.submit_title }</a>
							</td>
						</tr>
						<tr height="30">
							<td  id="th" >강의 자료 내용</td>
						</tr>
						<tr height="30">
							<td id="th2" >${list.submit_content }</td>
						</tr>
						</table><br>
					</c:forEach>
			<br>
		
			
	</form>
</body>
</html>