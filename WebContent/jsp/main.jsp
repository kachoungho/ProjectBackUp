<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/FirstProject/css/style.css">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>th125 JSP Template</title>
</head>
<body>
	<br>
	<br>
		<form name="mainForm" action="/FirstProject/login.do" method="post">
		<!-- <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br> -->
			<table id="table1" align="center">
				<tr>
					<td id="font" align="left" font="30px"><font color="black">학 번</font></td>
				</tr>
				<tr>
					<td align="center"><input type="text" style="width: 400px;" name="mem_num"></td>
				</tr>
				<tr>
					<td class="m-t-10" align="center" id="font" >비밀번호
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="javascript:;" onclick="window.open('/FirstProject/pwdFind.do', 'pwFind', 'resizable=no width=400 height=600' ); return false" style="color: black" id="font" >비밀번호 찾기</a>
					</td>
				</tr>
				<tr>
					<td align="center"><input type="password" style="width: 400px;"
						name="mem_pwd"></td>
				</tr>
				<tr>
					<td  align="center"><input class="css_btn_class" type="submit"
						style="width: 400px; height: 30px" value="로그인"></td>
				</tr>
			</table>

			<table align="center">
				<tr align="center" >
					<td width="200">
						<a class="btn btn-default" href="" onclick="javascript:alert('\n권한이 없습니다\n\n로그인 후 사용해주세요\n')">종합 정보 시스템</a>
					</td>
				</tr>
			</table>
		</form>
</body>
</html>