<%@page import="com.jitsi.dao.UserDao"%>  
<jsp:useBean id="u" class="com.jitsi.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>  
<%  
int i=UserDao.update(u);  
response.sendRedirect("viewuser.jsp");  
%>  
<%
	String email = (String) session.getAttribute("email");
%>