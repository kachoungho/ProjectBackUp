
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
	<form action="/FirstProject/stuSubmitView.do" method="post">
		<table id="th2" align="center">
			<input type="hidden" name="sub_code" value="${sub_code}">
			<input type="hidden" name="sub_name" value="${sub_name}">
			<tr>
				<td id="th3" colspan="2"><b>[ <c:out value="${sub_name}" />
						] 과목의 각 주차별 과제 목록
				</b></td>
			</tr>
			<tr>
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
				</select></td>
				<td><input type="submit" class="css_btn_class" value="선택" /></td>
			</tr>
		</table>
		<table align="right">
			<td><input type="button" class="css_btn_class"  value="과목 목록보기"
				onclick="document.location.href='stuSubmitListForm.do'"></td>
		</table>
		<br> <br>
	</form>


	<form action="/FirstProject/upload.do" method="post"
		enctype="multipart/form-data">
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
			<c:if test="${list.submit_content != null}">
				<input type="hidden" name="submit_week" value="${list.submit_week}">
				<input type="hidden" name="sub_code" value="${list.sub_code}">
				<input type="hidden" name="emp_num" value="${list.emp_num}">
				<input type="hidden" name="submit_title"
					value="${list.submit_title}">
				<input type="hidden" name="submit_content"
					value="${list.submit_content}">
				<table width="700" align="center">
					<tr height="30">
						<td id="th" width="100">주 차</td>
						<td id="th">과 제 명</td>
					</tr>
					<tr height="30">
						<td id="th2" rowspan="3">${list.submit_week }주차</td>
						<td id="th2">${list.submit_title }</a>
						</td>
					</tr>
					<tr height="30">
						<td id="th">과제 내용</td>
					</tr>
					<tr height="30">
						<td id="th2">${list.submit_content }</td>
					</tr>
				</table>
				<br>
			</c:if>
		</c:forEach>


		<c:forEach var="report" items="${ report }">
			<c:if test="${report.filename != null}">
				<table id="th" width="700" cellpadding="0" cellspacing="0"
					align="center">
					<tr>
						<td id="th" colspan="4">${report.submit_week }주차과제제출현황</td>
						<!-- ${report.submit_week} -->
					</tr>
					<tr>
						<td id="th" width="200">과 제 명</td>
						<td id="th2">${report.submit_title}</td>
						<td id="th" width="200">제 출 자</td>
						<td id="th2">${report.stu_num}</td>
					</tr>

					<tr>
						<td id="th" width="200">파일명</td>
						<td id="th2"><a
							href="/FirstProject/download.do?filename=${report.filename}">${report.filename}</a></td>
						<td id="th">설 명</td>
						<td id="th2">${report.description}</td>
					</tr>
				</table>
				<br>
			</c:if>
		</c:forEach>

		<c:forEach var="list" items="${ list }" begin="0" end="0">
			<br>
			<table id="th" width="700" cellpadding="0" cellspacing="0"
				align="center">
				<tr>
					<td id="th">파일 :</td>
					<td id="th2"><input type="file" name="file" /></td>
				</tr>
				<tr>
					<td id="th">설명 :</td>
					<td id="th2"><input type="text" name="description" /></td>
				</tr>
				<tr>
					<td id="th2" colspan="2"><input type="submit" class="css_btn_class" value="제출" /></td>
				</tr>
			</table>
		</c:forEach>
	</form>

</body>
</html>


