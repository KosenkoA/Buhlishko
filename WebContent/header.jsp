<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body background="images/bg.jpg">
        <table width=100%>
			<tr>
    			<td align="left">
					<h1 align="left">Alcohol Shop</h1>
				</td>
 				<td align="right">
					<a class="logBtn" href="<c:url value="/items"/>">Items</a>
    				<a class="logBtn" href="<c:url value="/cart"/>">Cart (<span id="itemCnt">${cart.count}</span>)</a>
					<c:choose>
      					<c:when test="${empty login}">
        					<a class="logBtn" href="<c:url value="/register"/>">Register</a> <a class="logBtn" href="<c:url value="/login"/>">Login</a>
      					</c:when>
      					<c:otherwise>
        					<form style="display: inline" action="<c:url value="/logout"/>" method="post"><input class="logBtn" type="submit" value="Logout ${login}"></form>
      					</c:otherwise>
    				</c:choose>
 				</td>
			</tr>
		</table>
	</body>
</html>