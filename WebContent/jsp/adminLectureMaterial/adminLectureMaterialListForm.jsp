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
		<table align="center">
			<td id="th2"><b>[ <c:out value="${sub_name}"/> ] 과목의 각 주차별 강의자료 목록</b></td>
		</table>
		<table align="right">
			<td id="td"><input type="button" class="css_btn_class"  value="강의자료 작성" 
			onclick="document.location.href='adminLectureMaterialWriteForm.do?sub_code=${sub_code }&sub_name=${sub_name}'">
			<input type = "button" class="css_btn_class"  value = "과목 목록보기" 
				onclick="document.location.href='adminLectureMaterial.do'">				
			</td>
		</table>
		<br> <br>
				<c:if test="${count<1 }">
			<table width="700" align="center">
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
			<table width="700" align="center">
				<tr height="30">
					<td id="th">주 차</td>
					<td id="th2">${list.submit_week }주차</td>
					<td id="th" width="100">과 목 코 드</td>
					<td id="th2">${list.sub_code}</td>
				</tr>
				
				<tr height="30">
					<td id="th">자 료 명</td>
					<td id="th2">${ list.submit_title }</a>
					<td id="th">강의 자료 내용</td>
					<td id="th2">${list.submit_content }</td>
					</td>
				</tr>
				
				<tr height="30">
					<td id="th">파 일 명</td>
					<td id="th2"><a
							href="/FirstProject/lecturedownload.do?filename=${list.filename}">${ list.filename }</a>
					<td id="th">파 일 설 명</td>
					<td id="th2">${list.description }</td>
					</td>
				</tr>
					
				</tr>
			</table>
			<br>
		</c:forEach>
			<br>
		
			
	</form>
</body>
</html>