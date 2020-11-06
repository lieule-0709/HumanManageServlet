<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>tim kiem</title>
</head>

<script language="javascript">
        function check() {
            var manv = document.timkiem.manv.value;
            var userName = document.timkiem.userName.value;
            if (!manv && !userName) {
                alert("Vui lòng nhập thông tin!");
            } else {
            	document.forms[0].submit();
            }
        }
</script>

<body style="padding: 20"  align="center">
    <form style=" margin: auto; width: 350px; border: solid black 1px; padding: 20px" name="timkiem"  action="SearchServlet" method="post" target="center">
       	tìm kiếm <br>
        Mã nhân viên :  <input type="text" name="manv" style="margin: 10px"> <br>
        Tên nhân viên: <input type="text" name="userName" style="margin: 10px"> <br>
        <input name="OK" type="button" value="OK" onclick="check()">
        <input name="reset" type="reset" value="reset"">  
    </form>
</body>

</html>