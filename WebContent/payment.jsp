<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>Selected items (cart)</title>
  <link href="css/styleReg.css" rel="stylesheet">
</head>
<body>
<jsp:include page="header.jsp"/>

<div class="form">
	<div class="form_action">
  	<form action="<c:url value="/payment"/>" method="post">
		<h3>Please specify destination address and payment type:</h3>
		<label>Delivery address:</label>
		<input type="text" name= "addr" title="Input address" class="name" required><br>
		
      	<label>Credit card number:</label>
      	<input type="text" name="credit_card" title="Cart" class="name"><br>
        <input type="submit" value="Confirm" class="logBtn">
  	</form>
	</div>
</div>

<%-- <html>
<head>
  <style>.err {color: red} </style>
  <title>Login</title>
  <link href="css/styleReg.css" rel="stylesheet">
</head>
<body>
<jsp:include page="header.jsp"/>

<div class="form">
<form class="reg" action="<c:url value="/login"/>" method="post">
	<div class="form_action">
  		<c:if test="${not empty param.error}">
    		<h3 class="err">Invalid login or password!</h3>
  		</c:if>
		<h3>Input your credentials:</h3>
		<label>Login:</label>
		<input type="text" name= "login" title="Input login..." class="name" required><br>
       	<span class="err">${errors.login}</span>
      	<label>Password</label>
      	<input type="password" name="pwd" title="Pass" class="pass"><br>
       	<input type="reset" value="Reset form">
        <input type="submit" value="Login">
	</div>
</form>
</div>
</body>
</html> --%>