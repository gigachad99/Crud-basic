<%@page import="com.entity.TodoDtls"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.TodoDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit</title>
<%@include file="component/all_css.jsp"%>
</head>
<body style="background-color: #f6f1f0">
	<%@include file="component/navbar.jsp"%>
	<div class="container">
		<div class="row p-4">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<h2 class="text-center text-info">Edit</h2>
						<%
						int id = Integer.parseInt(request.getParameter("id"));

						TodoDAO dao = new TodoDAO(DBConnect.getConn());
						TodoDtls t = dao.getTodoById(id);
						%>

						<form action="update" method="post">
							<input type="hidden" value="<%=t.getId()%>" name="id">
							<div class="form-group">
								<label for="Name">Name</label> <input type="text"
									class="form-control" id="nameID" aria-describedby="Name"
									placeholder="Name" name="username" value="<%=t.getName()%>" />
							</div>
							<div class="form-group">
								<label for="TodoThing">Todo</label> <input type="text"
									class="form-control" id="todoID" aria-describedby="Thing todo"
									placeholder="Thing todo" name="todo" value="<%=t.getTodo()%>" />
							</div>
							<div class="form-group col-md-6">
								<label for="status">Status</label> <select id="statusID"
									class="form-control" name="status">
									<%
									if ("Pending".equals(t.getStatus())) {
									%>
									<option value="Pending">Pending</option>
									<option value="Complete">Complete</option>
									<%
									} else {
									%>
									<option value="Pending">Pending</option>
									<option value="Complete">Complete</option>
									<%
									}
									%>

								</select>
							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-primary ">Add</button>
							</div>

						</form>

					</div>
</body>
</html>