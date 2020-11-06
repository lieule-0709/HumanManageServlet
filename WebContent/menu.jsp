<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="style_menu.css" rel="stylesheet" type="text/css">
</head>

<body bgColor="#DDD" style="margin:0">
	<% 
	if(session.getAttribute("user")!=null){
		String redirectURL = "submenu.jsp";
	    response.sendRedirect(redirectURL);
	}
	%>
    <div id="menu">
    <ul>
        <li> <a href="ShowNhanVienServlet" target="center"> Xem thông tin nhân viên </a></li> 
        <li> <a href="ShowPhongBanServlet" target="center"> Xem thông tin phòng ban </a></li> 
        <li> <a href="timkiem.jsp" target="center"> Tìm kiếm </a></li> 
        <li> <a href="ShowNhanVienToUpdate" target="center"> chỉnh sửa </a></li> 
        <li> <a href="GetIdpbToAdd" target="center"> Thêm nhân viên </a></li> 
        <li> <a href="xoa.jsp" target="center"> Xóa nhân viên </a></li>
    </ul>
    </div>
    
</body>
</html>