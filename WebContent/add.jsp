<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="form.css" rel="stylesheet" type="text/css">
</head>
<body>
	<% 
		if(request.getAttribute("msg")!= null){%>
			<h3><%=request.getAttribute("msg")%></h3>
		<%} %>
	
	<form action="AddServlet" method="post">
		<h3>Thêm mới sinh viên</h3><br>
		<i>Mã SV</i>
		<input type="text" name="masv" class="half"><br>
		<i>Họ tên</i>
		<input type="text" name="userName" class="half"><br>
		<i>Giới tính</i>
		<input type="radio" name="gender" value="Nam" class="radio"> Nam
		<input type="radio" name="gender" value="Nu" class="radio"> Nữ<br>
		<i>Khoa</i>
		<select name="khoa">
			<option value="CNTT">cntt</option>
			<option value="DTVT">dtvt</option>
			<option value="KTXD">ktxd</option>
		</select> <br>
		<button type="submit">Thêm mới</button>
		<button type="reset" onclick="history.back()">Quay lại</button>
	</form>

</body>
</html>