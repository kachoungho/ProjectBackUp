<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>���ǰ�ȹ��</title>
</head>
<body>

����:<select name="department">
			<% int i =0; %>
			<% while(i < 10){ %>
				<option value="<%=i%>"><%=i+"�� �а�"%></option>
			<% 
			   i++;
			   }
			%>
		</select>
<table width='400' border='1'>
<tr bgcolor="#A9BCF5">
 <th> ���� </th>
 <th> �г⵵ </th>
 <th> �б� </th>
 <th> �����ڵ� </th>
 <th> ����� </th>
 <th> ���ǰ�ȹ�� </th>
 </tr>
<tr>
	<td>1</td>
	<td>2016</td>
	<td>1</td>
	<td>11q1</td>
	<td>java</td>
	<td><input type="button" value ="���ǰ�ȹ��"/></td>
</tr>
<tr>
	<td>2</td>
	<td>2016</td>
	<td>1</td>
	<td>11q1</td>
	<td>jsp</td>
	<td><input type="button" value ="���ǰ�ȹ��"/></td>
</tr>

<tr>
	<td>3</td>
	<td>2016</td>
	<td>1</td>
	<td>11q1</td>
	<td>html</td>
	<td><input type="button" value ="���ǰ�ȹ��"/></td>
</tr>
<tr>
	<td>4</td>
	<td>2016</td>
	<td>1</td>
	<td>11q1</td>
	<td>spring</td>
	<td><input type="button" value ="���ǰ�ȹ��"/></td>
</tr>

</table>
</body>
</html>