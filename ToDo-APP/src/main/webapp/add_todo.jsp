<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Adding</title>
<%@include file="component/all_css.jsp"%>
</head>
<body style="background-color: #f0f1f0">
	<%@include file="component/navbar.jsp"%>

	<div class="container">
		<div class="row p-4">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<h2 class="text-center text-info">Add Todo</h2>
						<form action="add_todo" method="post">

							<div class="form-group">
								<label for="Name">Name</label> <input type="text"
									class="form-control" id="nameID"
									aria-describedby="Name" placeholder="Name"
									name="username" />
							</div>
							<div class="form-group">
								<label for="TodoThing">Todo</label> <input type="text"
									class="form-control" id="todoID"
									aria-describedby="Thing todo" placeholder="Thing todo"
									name="todo" />
							</div>
							<div class="form-group col-md-6">
								<label for="status">Status</label> <select id="statusID"
									class="form-control" name="status">
									<option selected>--Select--</option>
									<option value="Pending">Pending</option>
									<option value="Complete">Complete</option>

								</select>
							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-primary ">Add</button>
							</div>

						</form>

					</div>
</body>
</html>