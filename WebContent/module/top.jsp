<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style type="text/css">
html, body {
	width: 100%;
	height: 100%;
	margin: 0;
	padding: 0;
}

.btn-default {
	text-align: left;
	font-family: '1훈고딕굴림'; '
	color: black;
	font-size: 20px;
	margin-top: 10px;
}

.td {
	text-align: right;
	font-family: '1훈고딕굴림'; '
	font-size: 20px;
	color: black;
}
</style>
<table width="100%">
	<tr>
		<td><font color="red">일단은 빈공간이고 나중에 이미지 파일들 들어갈 자리입니다.</font></td>
	</tr>
	<tr>
		<td class="td">${mem_name}님 접속중</td>
	</tr>
	<tr>
		<td class="td"><input type="button" value="로그아웃" onclick="document.location.href='/FirstProject/logout.do'"></td>
	</tr>

</table>

