<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert Add Notes</title>
    <%@include file = "All_JSP_CSS.jsp" %>

</head>
<body>
	<div class="container-fluid p-10 m-10">
		<%@include file = "navbar.jsp" %>
		<br>
		This is add notes page
		<!-- This is form -->
		<form action="SaveNoteServlet" method="post">
  <div class="form-group">
    <label for="title">Note title</label>
    <input name="title" type="text" class="form-control" id="title" aria-describedby="emailHelp"/>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Detailed Description</label>
    <input name = "content" type="text" class="form-control" id="exampleInputPassword1"/>
  </div>
 
  <button type="submit" class="btn btn-primary">Add</button>
</form>
	</div>
</body>
</html>