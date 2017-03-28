<%@ page language="java" import="java.util.*,java.text.*" contentType="text/html; charset=utf-8" %> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>

  <body>
  	<h1>application对象</h1>
  	<%
  		application.setAttribute("username", "张三");
  		application.setAttribute("email", "123@163.com");
  		application.setAttribute("password", "123");
  		
  	 %>
  	 email:<%=application.getAttribute("email") %><br>
  	 sessionID: <%=session.getId() %><br>
  	 <%
  	 	Enumeration<String> e = application.getAttributeNames(); 
  	 	while(e.hasMoreElements()) {
  	 		String name = e.nextElement();
  	 		out.println("<b>" + name + ":</b>" + application.getAttribute(name) + "<br>");
  	 	}
  	  %>
  	  JSP(Servlet)引擎号及版本名: <%=application.getServerInfo() %>
  	  <br>
  	  <a href="04session_1.jsp" target="_blank">跳转到session_1.jsp</a>
  </body>
</html>
