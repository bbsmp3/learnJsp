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
  	<h1>session对象</h1>
  	<%
  		session.setAttribute("username", "张三");
  		session.setAttribute("password", "123");
  		//session.setAttribute("username", "李四");
  		
  		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
  		Date d = new Date(session.getCreationTime());
  		session.setMaxInactiveInterval(5);
  	 %>
  	 session创建时间:<%=sdf.format(d) %><br>
  	 sessionID: <%=session.getId() %><br>
  	 <%
  	 	Enumeration<String> e = session.getAttributeNames();
  	 	while(e.hasMoreElements()) {
  	 		String name = e.nextElement();
  	 		out.println(name + ":" + session.getAttribute(name) + "<br>");
  	 	}
  	  %>
  	  <br>
  	  <a href="04session_1.jsp" target="_blank">跳转到session_1.jsp</a>
  </body>
</html>
