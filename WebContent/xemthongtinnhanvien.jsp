<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="model.bean.NhanVien" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>nhan vien</title>
<link href="style_table.css" rel="stylesheet" type="text/css">
</head>
<body>

	<% ArrayList<NhanVien> list = (ArrayList<NhanVien>) request.getAttribute("listUsers"); 
		if(list.size() == 0) {
	%>
	No Result is matched!
	<%}else{ %>
	<h2 style="width:100%; text-align: center">Danh sách nhân viên</h2>
	<table>
		<tr>
			<th>Id nhân viên</th>
			<th>Họ tên</th>
			<th>Địa chỉ</th>
			<th>Id phòng ban</th>
		</tr>
		<% 
		for(int i=0; i<list.size(); i++){
		%>
		<tr>
			<td><%=list.get(i).getId()%></td>
			<td><%=list.get(i).getname()%></td>
			<td><%=list.get(i).getAdd()%></td>
			<td><%=list.get(i).getIdpb()%></td>
		</tr>
		<%} %>
	</table>
	<%} %>
</body>
</html>