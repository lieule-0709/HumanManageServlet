<%@page import="model.bean.NhanVien"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>kết quả tìm kiếm</title>
<link href="style_table.css" rel="stylesheet" type="text/css">
</head>
<body>

	<% 
		ArrayList<NhanVien> list = (ArrayList<NhanVien>) request.getAttribute("searchResult"); 
		if(list.size() == 0) {
	%>
	<h1 color="red">No Result is matched</h1>
	<%}else{ %>
	
	<h2 style="width:100%; text-align: center">Danh sách nhân viên tìm được</h2>
	<table id="table">
		<tr>
			<th>ID nhân viên</th>
			<th>Tên nhân viên</th>
			<th>Địa chỉ</th>
			<th>ID phòng ban</th>
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