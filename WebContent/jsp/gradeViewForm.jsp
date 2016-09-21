<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>th125 JSP Template</title>
</head>
<body>
	<table border="1">
		<tr align="center">
			<td rowspan="3" width="60">종합</td>
			<td width="100" bgcolor="gray"><font color="white">총신청학점</font></td><td width="100">${ 1 }</td>
			<td width="100" bgcolor="gray"><font color="white">총취득학점</font></td><td width="100">${ 1 }</td>
			<td width="100" bgcolor="gray"><font color="white">평 점 계</font></td><td width="100">${ 1 }</td>
			<td width="100" bgcolor="gray"><font color="white">총평점평균</font></td><td width="100">${ 1 }</td>
		</tr>
		<tr align="center">
			<td bgcolor="#DDEF3A"><font color="black">1학년<br>교양필수</font></td>
			<td bgcolor="#DDEF3A"><font color="black">1학년<br>전공필수</font></td>
			
			<td bgcolor="#84EDE8"><font color="black">2학년<br>교양필수</font></td>
			<td bgcolor="#84EDE8"><font color="black">2학년<br>전공필수</font></td>
			
			<td bgcolor="#3AEFBC"><font color="black">3학년<br>교양필수</font></td>
			<td bgcolor="#3AEFBC"><font color="black">3학년<br>전공필수</font></td>
			
			<td bgcolor="#EFA93A"><font color="black">4학년<br>교양필수</font></td>
			<td bgcolor="#EFA93A"><font color="black">4학년<br>전공필수</font></td>
		</tr>
		<tr align="center">
			<td ><font color="black">${ 1 }</font></td>
			<td ><font color="black">${ 1 }</font></td>
			
			<td ><font color="black">${ 2 }</font></td>
			<td ><font color="black">${ 2 }</font></td>
			
			<td ><font color="black">${ 3 }</font></td>
			<td ><font color="black">${ 3 }</font></td>
			
			<td ><font color="black">${ 4 }</font></td>
			<td ><font color="black">${ 4 }</font></td>
		</tr>
	</table>
	<br><br>
	<table border="1">
		<tr align="center">
			<td rowspan="2" width="200" bgcolor="#57AAA6">1학년 1학기</td>
			<td bgcolor="skyblue" width="100">신청학점</td>
			<td bgcolor="skyblue" width="100">취득학점</td>
			<td bgcolor="skyblue" width="100">평 점 계</td>
			<td bgcolor="skyblue" width="100">평점평균</td>
			<td bgcolor="skyblue" width="100">석   차</td>
		</tr>
		<tr align="center">
			<td>${ 1 }</td>
			<td>${ 2 }</td>
			<td>${ 3 }</td>
			<td>${ 4 }</td>
			<td>${ 5 }</td>
		</tr>
	</table>
	<br>
	<table border="1">
		<tr align="center">
			<td bgcolor="skyblue" width="100">수강코드</td>
			<td bgcolor="skyblue" width="300">과 목 명</td>
			<td bgcolor="skyblue" width="100">학   점</td>
			<td bgcolor="skyblue" width="100">이수구분</td>
			<td bgcolor="skyblue" width="100">등   급</td>
		</tr>
		<tr align="center">
			<td>CEO11001</td>
			<td>과목1</td><!-- taglib 형태로 수정필요-->
			<td>3</td>
			<td>전공</td><!-- taglib 형태로 수정필요-->
			<td>B</td><!-- taglib 형태로 수정필요-->
		</tr>
		<tr align="center">
			<td>CEO11002</td>
			<td>과목2</td><!-- taglib 형태로 수정필요-->
			<td>2</td>
			<td>교양</td><!-- taglib 형태로 수정필요-->
			<td>B</td><!-- taglib 형태로 수정필요-->
		</tr>
		<tr align="center">
			<td>CEO11003</td>
			<td>과목3</td><!-- taglib 형태로 수정필요-->
			<td>3</td>
			<td>전공</td><!-- taglib 형태로 수정필요-->
			<td>B</td><!-- taglib 형태로 수정필요-->
		</tr>
		<tr align="center">
			<td>CEO11004</td>
			<td>과목4</td><!-- taglib 형태로 수정필요-->
			<td>2</td>
			<td>교양</td><!-- taglib 형태로 수정필요-->
			<td>B</td><!-- taglib 형태로 수정필요-->
		</tr>
	</table>
</body>
</html>