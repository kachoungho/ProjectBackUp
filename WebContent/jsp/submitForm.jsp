<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>������ ����</title>
</head>
<body>
	<form action="" method="post" name="" id="id">
		<select name="year">
			<% int i =2015; %>
			<% while(i <=2016){ %>
			<option value="<%=i%>"><%=i%></option>
			<% 
			   i++;
			   }
			%>

		</select><font face="����ü">�г⵵</font> <select name="semester">

			<option value="one">1�б�
			<option value="two">2�б�
			</option>
	
		</select>
		
		<form action="">
			<table align="center">
				<td align="right"><input type="submit" value="Ȯ��">
				</td>
			</table>
		</form>
		
		<font color="red" >-. ÷������ ���ε忡 �ټ� �ð��� �ɸ��ϴ�. ����Ϸ� �� ȭ�� ��ȯ�ñ��� ��ٷ��ֽñ� �ٶ��ϴ�. <br>
  -. ������ ���� �� ����Ȯ�ο��� ������ ���� �� ÷�������� ���������� ����Ǿ����� Ȯ���Ͻñ� �ٶ��ϴ�. <br>
  -. �ش� �б� ���� ��, ���� �뷮 ������ ������ ������ ��� ���� �˴ϴ�.<br></font>
  <a href ="advice.jsp">
  <b>����: ������ ���� / Ȯ�� �̿�ȳ�</b>
  </a>
  <br><br>
  
 <table border="1">
 <tbody><tr bgcolor="#A9D0F5">
        <td  align="center"rowspan="2">����</td>
        <td  align="center"rowspan="2">����������</td>
        <td  align="center"  colspan="2">���� �Ⱓ</td>
        <td  align="center"  rowspan="2">����</td>
        <td  align="center"   colspan="4">����������</td>
        <td  align="center"   rowspan="2">����Ȯ�ο���</td>
        <td  align="center"  rowspan="2">����</td>
     </tr>
     <tr bgcolor="#A9D0F5">
        <td align="center" >(����)</td>
        <td align="center" >(����)</td>
        <td align="center" >����</td>
        <td align="center" >����</td>
        <td align="center" >����Ȯ��</td>
        <td align="center" >÷������</td>
     </tr>
     <tr><td >����</td><td ></td><td></td><td ></td><td ></td><td></td><td ></td><td ></td><td ></td><td ></td><td ></td></tr>
   </tbody>
 </table>
</body>
</html>
















