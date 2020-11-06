<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>trangchu.lieule</title>
</head>


<% 
	String menu="";
	if(session.getAttribute("userName")!= null && !((String)session.getAttribute("userName")).equals("")){
	 menu = "menu.jsp";}
	else menu = "submenu.jsp";
%>


<frameset rows="100,*" border="false" frameborder="0">
    <frame name="top" src="top.jsp">
    <frameset cols="17%,*,17%" >
        <frame name="left" src=" <%=menu%>">
        <frame name="center" src="display.jsp">
        <frame name="right" src="more.jsp">
    </frameset>
</frameset>


<body>    
</body>

</html>