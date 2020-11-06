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
	<form action="DeleteServlet" method="post" id="deleteForm">
		<h3>Xóa thông tin sinh viên</h3><br>
		<i>Sửa sinh viên: <%=(String)request.getParameter("userName") %></i><br>
		<i>Mã SV</i>
		<input type="text" name="masv" class="input" value="<%=(String)request.getParameter("masv") %>" readOnly><br>
		<i>Họ tên</i>
		<input type="text" name="userName" class="input" value="<%=(String)request.getParameter("userName") %>" readOnly><br>
		<i>Giới tính</i>
		<input type="radio" name="gender" value="Nam" <%= ((String)request.getParameter("gender")).equals("Nam")?"checked":"" %> readOnly> Nam
		<input type="radio" name="gender" value="Nu" <%= ((String)request.getParameter("gender")).equals("Nu")?"checked":"" %> readOnly> Nữ<br>
		<i>Khoa</i> 
		<select name="khoa" form="deleteForm" readOnly>
			<option value="CNTT" <%= ((String)request.getParameter("khoa")).equals("CNTT")?"selected":"" %>>cntt</option>
			<option value="DTVT" <%= ((String)request.getParameter("khoa")).equals("DTVT")?"selected":"" %>>dtvt</option>
			<option value="KTXD" <%= ((String)request.getParameter("khoa")).equals("KTXD")?"selected":"" %>>ktxd</option>
		</select> <br>
		<button type="submit">Xác nhận</button>
		<button type="button" onclick="history.back()">Quay lại</button>
	</form>
</body>
</html>