<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Selected items (cart)</title>
</head>
<body>
<jsp:include page="header.jsp"/>

<div class ="content">
  <c:choose>
     <c:when test="${cart.count eq 0}">
     <div align = "center">
     	<h2>Cart is empty</h2>
     </div>
     </c:when>
     <c:otherwise>
      <table align = "center">
      <c:forEach items="${cart.items}" var="v" varStatus="status">
         <tr>
			<td>
				<div class="box">
					<img class="fixed-ratio-resize" src=${v.item.image}>
					<h3>Name: ${v.item.name}</h3>
					<h3>Price: ${v.item.price}</h3>
					<h3>Volume ${v.item.volume}</h3>	
				</div>
			</td>
			<td>
              <form action="<c:url value="/remove_from_cart?position=${status.index}"/>" method="post"  align ="right">
                <input type="submit" value="remove" align = "right" class="logBtn">
              </form>
            </td>
        </tr>
      </c:forEach>
      </table>
     </c:otherwise>
  </c:choose>
</div>

<div align = "center">
<c:if test="${cart.count ne 0}">
  <a href="<c:url value="/payment"/>"class="logBtn" >Confirm purchase</a>
</c:if>  
</div>
</body>
</html>
