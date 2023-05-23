<%@page import="org.hibernate.Query"%>
<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Notes</title>   
 <%@include file = "All_JSP_CSS.jsp" %>

</head>
<body>
	<div class = "container">
	<%@include file = "navbar.jsp" %>
	<br>
	<h1 class="text-uppercase">All Notes</h1>
	
	<%
	Session s = FactoryProvider.getFactory().openSession();
	Query q =  s.createQuery("From Note");
	List<Note> l=  q.list();
	for(Note note:l){
		out.println(note.getId()+": "+note.getDescription()+"<br>");
	}
	%>
	</div>
	

</body>
</html>