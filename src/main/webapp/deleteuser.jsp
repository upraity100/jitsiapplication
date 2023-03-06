<%@page import="com.jitsi.dao.UserDao"%>  
<jsp:useBean id="u" class="com.jitsi.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>  
 
<%  
UserDao.delete(u);  
response.sendRedirect("viewuser.jsp");  
%>  

