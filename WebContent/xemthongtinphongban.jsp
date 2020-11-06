<%@page import="model.bean.PhongBan"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="model.bean.NhanVien" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>phong ban</title>
<link href="style_table.css" rel="stylesheet" type="text/css">
</head>
<body>

	<% ArrayList<PhongBan> list = (ArrayList<PhongBan>) request.getAttribute("listPB"); 
		if(list.size() == 0) {
	%>
	No Result is matched!
	<%}else{ %>
	<h2 style="width:100%; text-align: center">Danh sách phòng ban</h2>
	<table>
		<tr>
			<th>Id phòng</th>
			<th>Tên phòng ban</th>
			<th>Mô tả thêm</th>
		</tr>
		<% 
		for(int i=0; i<list.size(); i++){
		%>
		<tr>
			<td><%=list.get(i).getId()%></td>
			<td><%=list.get(i).getname()%></td>
			<td><%=list.get(i).getAdd()%></td>
		</tr>
		<%} %>
	</table>
	<%} %>
</body>
</html>