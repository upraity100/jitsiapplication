<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<center><body bgcolor="lightgreen">


<%
	String email = (String) session.getAttribute("email");
	if(email==null)
	{
		response.sendRedirect("index.jsp");
	}
%>

<h1><marquee width="100%" behavir="alternat" bgcolor="pink">Welcome <%=email %></h1></marquee>
<br>
<br>
<h1><input type="button" class="button" value="Go Next" onclick="window.location='index1.jsp'"/></h1>
</body></center>