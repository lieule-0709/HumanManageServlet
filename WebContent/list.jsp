<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.bean.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List</title>
<link href="table.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="content">
		<div class="top">
			<select id="khoa">
				<option value="CNTT">cntt</option>
				<option value="DTVT">dtvt</option>
				<option value="KTXD">ktxd</option>
			</select>
			<button onclick="xem()">Xem</button>
			<a href="/btServlet2/add.jsp" class="add">Thêm mới</a>
		</div>
		<% ArrayList<User> list = (ArrayList<User>) request.getAttribute("listUsers"); 
		if(list.size() == 0) {
		%>
	Không có sinh viên nào!
	<%}else{ %>
		<table id="table">
			<tr>
				<th>MaSV</th><th>Ho va ten</th><th>Gioi tinh</th><th>Khoa</th><th>Hành động</th>
			</tr>
			<% 
			for(int i=0; i<list.size(); i++){
			%>
			<tr>
			<td><%=list.get(i).getId()%></td>
			<td><%=list.get(i).getname()%></td>
			<td><%=list.get(i).getgender()%></td>
			<td><%=list.get(i).getkhoa()%></td>
			<td><a href="/btServlet2/update.jsp?masv=<%= list.get(i).getId() %>&userName=<%=list.get(i).getname()%>&gender=<%=list.get(i).getgender()%>&khoa=<%=list.get(i).getkhoa()%>">sửa</a> 
			/ <a href="/btServlet2/delete.jsp?masv=<%= list.get(i).getId() %>&userName=<%=list.get(i).getname()%>&gender=<%=list.get(i).getgender()%>&khoa=<%=list.get(i).getkhoa()%>">xóa</a></td>
			</tr>
		<%} %>
		</table>
	
	<%} %>
	</div>
	
	<script>
		function xem(){
			var khoa = document.getElementById("khoa").value;
			
			tr = document.querySelectorAll('tr');

			for (let i = 1; i < tr.length; i++) {
				if (tr[i].innerText.indexOf(khoa) != -1) tr[i].style.display =  "table-row";
				else tr[i].style.display = "none";
			}
		}
	</script>
	
</body>

</html>