
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
	<form action="/FirstProject/adminSubmitListForm.do" method="post">
		<table align="center">
			<input type="hidden" name="sub_code" value="${sub_code}">
			<input type="hidden" name="sub_name" value="${sub_name}">
			<tr>
				<td id="th2"><b>[ <c:out value="${sub_name}" /> ] 과목의 각
						주차별 과제 목록
				</b></td>
			</tr>
			<tr align="center">
				<td><select name="week">
						<option value="default">주차 선택</option>
						<option value="1">1주차</option>
						<option value="2">2주차</option>
						<option value="3">3주차</option>
						<option value="4">4주차</option>
						<option value="5">5주차</option>
						<option value="6">6주차</option>
						<option value="7">7주차</option>
						<option value="8">8주차</option>
						<option value="9">9주차</option>
						<option value="10">10주차</option>
						<option value="11">11주차</option>
						<option value="12">12주차</option>
						<option value="13">13주차</option>
						<option value="14">14주차</option>
						<option value="15">15주차</option>
				</select><input type="submit" class="css_btn_class" value="선택" /></td>
			</tr>
		</table>
	</form>
	<form>
		<table align="right">
			<td id="td"><input type="button" class="css_btn_class"
				value="과제물 작성"
				onclick="document.location.href='adminSubmitWriteForm.do?sub_code=${sub_code }&sub_name=${sub_name}'">
				<input type="button" class="css_btn_class" value="과목 목록보기"
				onclick="document.location.href='adminSubmit.do'"></td>
		</table>
		<br> <br>
		<c:if test="${count<1 }">
			<table width="700" align="center">
				<tr height="30">
					<td id="th" width="100">주 차</td>
					<td id="th">과 제 명</td>
				</tr>
				<tr height="30">
					<td id="th2" rowspan="3"></td>
					<td id="th2">해당 과목의 과제가 아직 출제되지 않았습니다.</a>
					</td>
				</tr>
			</table>
		</c:if>
		<c:forEach var="list" items="${ list }" varStatus="status">
			<c:if test="${list.submit_content != null }">
				<table width="700" align="center">
					<tr height="30">
						<td id="th" width="100">주 차</td>
						<td id="th2">${list.submit_week }주차</td>
					</tr>
					<tr height="30">
						<td id="th">과목 코드</td>
						<td id="th2">${ list.sub_code }</a>
						</td>
					</tr>
					<tr height="30">
						<td id="th">과 제 명</td>
						<td id="th2">${list.submit_title }</td>
					</tr>
					<tr height="30">
						<td id="th">과 제 내 용</td>
						<td id="th2">${list.submit_content }</td>
					</tr>
				</table>
				<br>
			</c:if>
		</c:forEach>

		<c:forEach var="list2" items="${ list2 }" varStatus="status">
			<c:if test="${list2.stu_num != null }">
				<table width="700" align="center">
					<tr height="30">
						<td id="th" width="100">학 번</td>
						<td id="th2" width="100">${list2.stu_num}</td>
						<td id="th" width="100">파 일 명</td>
						<td id="th2" width="200">
							<a	href="/FirstProject/download.do?filename=${list2.filename}"> ${list2.filename}</a>
						</td>
						<td id="th" width="100">파 일 설 명</td>
						<td id="th2" width="100">${list2.description}</td>
					</tr>
				</table>
				<br>
			</c:if>
		</c:forEach>
		<br>
	</form>
</body>
</html>