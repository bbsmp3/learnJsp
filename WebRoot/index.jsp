<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %> 
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
	  <% out.println("111"); %> <br>
	  <%= 3+5+"\n"%> <br>
	  <%= request.getRemoteAddr()%> <br>
	  <%!
	  	String s = "水电费";
		int sum(int a, int b) {
			return a+b;
		}
	  %> <br>
	  <%
		out.println(sum(2,5));
		out.println(s);
		out.println(s.length());
	  %>
  </body>
</html>
