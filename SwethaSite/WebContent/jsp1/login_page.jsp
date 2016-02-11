<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Login Page</title>
</head>
<body onload='document.loginForm.j_username.focus();'>
<h3> Customer Login Page </h3>
<% 
  String errorString  = (String)request.getAttribute("error");
if(errorString != null || errorString.trim().equals("true"))
{ out.println("In correct login details please retry correct username and password");
	}
%>
<form name = loginForm action="<c:url value ='j_spring_security_check'/>">
<table>
<tr>
<td>User:</td>
<td><input type = "text" name = "j_username" value = "" >
</td>
</tr>
<tr>
<td>Password:</td>
<td>
<input type = "password" name = "j_password">
</td>
</tr>
<tr>
<td><input  name = "submt" type = "submit" value = "submit"/></td>
<td><input name = "reset" type = "reset"></td>
</tr>
</table>

</form>
</body>

</html>