<%@page import="com.jitsi.dao.UserDao"%>  
<jsp:useBean id="u" class="com.jitsi.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>  
<%
  String str=request.getParameter("web");
  response.sendRedirect("https://meet.jit.si/"+str);
%>