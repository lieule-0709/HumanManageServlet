
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>

<script language="javascript">
       function check() {
           var user = document.login.userName.value;
           var pass = document.login.password.value;
           if (!user || !pass) {
               alert("Vui lòng nhập đầy đủ thông tin!");
           } 
           else{
           	document.forms[0].submit();
           	setTimeout(() => {
                window.location = "top.jsp?upd" + Math.random() * 100;
            }, 100);
           }
       }
       
       var Logout = ()=> {
           if( confirm("Ban co  muon logout?")){
           	open("submenu.jsp", "left");
           	document.forms[1].submit();
       		}
       }
</script>


<body style="background: linear-gradient(90deg, rgba(12,5,51,1) 0%, rgba(69,212,232,1) 50%, rgba(70,109,138,1) 100%);">
    <div style="align: center; margin:0; width: 100%; margin: 0; display: inline-block">
        <div style="align: center; margin: auto; width:80%;"> <h1 align="center" style="color: white;"> Quản lý nhân sự </h1>
        </div>
        <div style="width:20%; position: absolute; right: 5px; top: 5%;">
            <form <%=(session.getAttribute("userName")!= null && !((String)session.getAttribute("userName")).equals(""))?"style='display: none'":"" %> name="login"  method="post" action="CheckLoginServlet" target="left">
                <h7> user</h7>
                <input name="userName" type="text" style="margin-top: 3px" width="100px"> 
                <br>
                pass <input name="password" type="password" style="margin-top: 3px">     
                <br>          
                <input type="button" value=" Login " style="margin-top: 10px" onclick="check()" >
                <input type="reset" value=" reset ">    
            </form>
        </div>
        <div style="width:20%; position: absolute; right:0; bottom: 40px">
        	 <form <%=(session.getAttribute("userName")== null)?"style='display: none'":"" %> name="logout" target="top" action="xulilogout.jsp" method="get">
        		<input value="<%=(session.getAttribute("userName")!= null)?((String)session.getAttribute("userName")):"" %>">
                <input type="button" name="logout" value="  logout  " style="position: absolute; right: 10px" onclick="Logout()" >
            </form>
        </div>
    </div>
</body>