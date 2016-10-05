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
	<form action="adminLectureMaterialWritePro.do" method="post"
		name="adminLectureMaterialWriteForm" enctype="multipart/form-data">
		<table id="th" align="center">
			<td id="th2"><b>[ <c:out value="${sub_name}" /> ] 과목의 강의자료
					업로드
			</b></td>
		</table>
		<table align="right">
			<td id="td"><input type="button" value="자료 목록보기"
				onclick="document.location.href='adminLectureMaterialListForm.do?sub_code=${sub_code}&sub_name=${sub_name}'">
			</td>
		</table>
		<br> <br>

		<table id="th" width="700" border="1" cellpadding="0" cellspacing="0"
			align="center">
			<tr height="30">
				<td id="th">주 차</td>
				<td id="th" colspan="2">자 료 명</td>
			</tr>
			<tr height="30">
				<td id="th2" rowspan="6"><select name="submit_week">
						<option value="default">선택</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
						<option value="13">13</option>
						<option value="14">14</option>
						<option value="15">15</option>
				</select><br> <br> 주차</td>
				<td id="th2" colspan="2"><input size="93" type="text" name="submit_title"
					placeholder="※ 자료명을 입력하여주세요."></td>
				</td>
			</tr>
			<tr height="30">
				<td id="th" colspan="2">강의 자료 내용</td>
			</tr>
			<tr height="30">
				<td id="th2" colspan="2"><textarea rows="12" cols="95"
						name="submit_content" placeholder="※ 자료 업로드시에 '주차'수 확인을 부탁드립니다."></textarea>
				</td>
			</tr>
			<tr>
					<td id="th">파일 :</td>
					<td id="th2"><input type="file" name="file" /></td>
				</tr>
				<tr>
					<td id="th">설명 :</td>
					<td id="th2"><input type="text" name="description" /></td>
				</tr>
			<tr>

				<td id="th2" colspan="2"><input type="submit" value="자료 등록"><input
					type="reset" value="다시 작성"></td>
			</tr>
		</table>
		<br> <br>
	</form>
</body>
</html>
