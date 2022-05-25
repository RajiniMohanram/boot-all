<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	<form action="login" method="post">
		<div>
			<label>
				Enter Username: <input type="text" name="username" />
			</label>
		</div>
		<div>
			<label>
				Enter Password: <input type="password" name="password" />
			</label>
		</div>
		<div>
			<input type="submit" value="Login" />
			<input type="reset" value="Clear" />
		</div>
	</form>
</body>
</html>