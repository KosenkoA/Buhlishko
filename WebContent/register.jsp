<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- <html>
<head>
  <style>.err {color: red} </style>
  <title>Register user</title>
</head>
<body>
<jsp:include page="header.jsp"/>

<h1>Fill registration form:</h1>
<div class="form">
  <form action="<c:url value="/register"/>" method="post">
  <table>
    <tr>
      <td>Login:</td>
      <td><input type="text" name="login" value="${bean.login}"></td>
      <td><span class="err">${errors.login}</span></td>
    </tr>
    <tr>
      <td>Passwrd:</td>
      <td><input type="password" name="pwd1"></td>
      <td><span class="err">${errors.pwd1}</span></td>
    </tr>
    <tr>
      <td>Confirm password:</td>
      <td><input type="password" name="pwd2"></td>
      <td><span class="err">${errors.pwd2}</span></td>
    </tr>
    <tr>
      <td>User name:</td>
      <td><input type="text" name="name" value="${bean.name}"></td>
      <td><span class="err">${errors.name}</span></td>
    </tr>
    <tr>
      <td>E-mail:</td>
      <td><input type="text" name="email" value="${bean.email}"></td>
      <td><span class="err">${errors.email}</span></td>
    </tr>
    <tr>
      <td>Send notification:</td>
      <td><input type="checkbox" name="advert" <c:if test="${bean.advertising}"> checked </c:if> > </td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><input type="reset" value="Reset form"></td>
      <td><input type="submit" value="Register"></td>
      <td>&nbsp;</td>
    </tr>
  </table>
</div>
</body>
</html> --%>

<html>
<head>
  <style>.err {color: red} </style>
  <title>Register user</title>
  <link href="css/styleReg.css" rel="stylesheet">
</head>
<body>
<jsp:include page="header.jsp"/>

<div class="form">
<form class="reg" action="<c:url value="/register"/>" method="post">
	<div class="form_action">
	<h3>Fill registration form:</h3>
      <label>Login:</label>
      <input type="text" name="login" value="${bean.login}" class="name"><br>
      <span class="err">${errors.login}</span>

      <label>Password</label>
      <input type="password" name="pwd1" class="pass"><br>
      <span class="err">${errors.pwd1}</span>

      <label>Confirm password:</label>
      <input type="password" name="pwd2" class="rpass"><br>
      <span class="err">${errors.pwd2}</span>
      
      <label>User name:</label>
      <input type="text" name="name" value="${bean.name}" class="name"><br>
      <span class="err">${errors.name}</span>

      <label>E-mail:</label>
      <input type="email" name="email" value="${bean.email}" class="mail"><br>
      <span class="err">${errors.email}</span>
      
      <input type="reset" value="Reset form">
      <input type="submit" value="Register">
      </div>
	</form>
</div>
</body>
</html>

<%-- <div class="form">
<form class="reg" action="<c:url value="/login"/>" method="post">
<div class="form_action">
  <c:if test="${not empty param.error}">
    <h3 class="err">Invalid login or password!</h3>
  </c:if>
  		<h3>Input your credentials:</h3>
		<label>Login:</label>
		<input type="text" name=login title="Input login..." class="name" required><br>
       	<span class="err">${errors.login}</span>
      	<label>Password</label>
      	<input type="password" name="pwd" title="Pass" class="pass"><br>
       	<input type="reset" value="Reset form">
        <input type="submit" value="Login">
</div>
</form>
</div> --%>
