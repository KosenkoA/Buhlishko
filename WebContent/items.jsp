<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="header.jsp"/>

<head>
<link href="css/style.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Items to calculate</title>
    <script src='<c:url value="jquery-1.11.3.js"/>'></script>
    <script>
         function addToCart(item_id, btn){
            $.ajax({
                type:"POST",
                url: '<c:url value="/add_to_cart"/>',
                data: {
                    id:item_id
                },
                success: function (msg){
                    $("#itemCnt").text(msg);
                }
            })
        }
    </script>
</head>

<body>
<div class ="content">
<c:if test="${not empty param.error}">
    <h2 style="color:red">${param.error}</h2>
</c:if>

<h1 align=center>Beer</h1>
<table class="spacing" align="center">
<tr align=center>
<c:forEach items="${beer}" var="v" varStatus="status">
		<td>
			<div class="box">
				<img class="fixed-ratio-resize" src=${v.image}>
				<h3>Name: ${v.name}</h3>
				<h3>Price: ${v.price}</h3>
				<h3>Volume ${v.volume}</h3>	
				<input type="button" value="Add to Cart" onclick="addToCart(${v.id})">		
			</div>
		</td>
</c:forEach>
</tr>
</table>

<h1 align=center>Wine</h1>
<table class="spacing" align="center" >
<tr align=center>
<c:forEach items="${wine}" var="v" varStatus="status">
		<td>
			<div class="box">
				<img class="fixed-ratio-resize" src=${v.image}>
				<h3>Name: ${v.name}</h3>
				<h3>Price: ${v.price}</h3>
				<h3>Volume ${v.volume}</h3>	
				<input type="button" value="Add to Cart" onclick="addToCart(${v.id})">	
			</div>
		</td>
</c:forEach>
</tr>
</table>

<h1 align=center>Cognac</h1>
<table class="spacing" align="center">
<tr align=center>
<c:forEach items="${cognac}" var="v" varStatus="status">
		<td>
			<div class="box">
				<img class="fixed-ratio-resize" src=${v.image}>
				<h3>Name: ${v.name}</h3>
				<h3>Price: ${v.price}</h3>
				<h3>Volume ${v.volume}</h3>	
				<input type="button" value="Add to Cart" onclick="addToCart(${v.id})">		
			</div>
		</td>
</c:forEach>
</tr>
</table>

</div>
</body>
</html>