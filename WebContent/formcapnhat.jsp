<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="model.bean.PhongBan"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<script>
    function check(){
            var id = document.form.manv.value;
            var ten = document.form.userName.value;
            var diachi = document.form.add.value;
            if (!id || !ten || !diachi) {
                alert("Vui lòng nhập đầy đủ thông tin!");
            }
            else{
            	document.forms[0].submit();
            }
    }
</script>


	<% ArrayList<PhongBan> list = (ArrayList<PhongBan>) request.getAttribute("listPB"); 
	String []  listIdpb = new String[list.size()];
	for(int i=0; i<list.size();i++){
		listIdpb[i] = (String)list.get(i).getId();
	}
	%>

<form action="UpdateServlet" method="post" align="center" name="form">
    <fieldset align="center" style="display: inline-block">
        <legend> Cập nhật </legend>
        <table align="center">
            <tr>
                <td>IDNV:</td>
                <td><input type="text" name="manv" value="<%=(String)request.getParameter("manv") %>" readOnly></td>
            </tr>
            <tr>
                <td>Họ tên:</td>
                <td><input type="text" name="userName" value="<%=(String)request.getParameter("userName") %>" ></td>
            </tr>
            <tr>
                <td>Địa chỉ:</td>
                <td><input type="text" name="add"  value="<%=(String)request.getParameter("add") %>"></td>
            </tr>
            <tr>
                <td>IDPB:</td>
                <!-- <td><input type="text" name="IDPB" value="" ></td> -->
                <td><select name="IDPB">
                	<%for(int i=0; i<listIdpb.length; i++){ %>
               		<option value="<%=listIdpb[i]%>"><%=listIdpb[i]%></option>
               		<%} %>
                    </select></td>
            </tr>
            <tr align="center" >
                <td colspan="2" align="center">
	                <button type="button" onclick="check()"> edit </button>
	                <button type="reset"> reset</button>
                </td>
            </tr>
        </table>
    </fieldset>
</form>
