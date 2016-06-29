<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Categories</title>
</head>
<body>

${message}
<h4>List of available categories</h4>
<form:form method="post" action="updateCategories" modelAttribute="category">
<table width="50%">
	<tr>
	    <th>S.No</th>
		<th>Id</th>
		<th>Name</th>
		<th>Description</th>
		
	</tr>
	<c:forEach items="${list}" var="category" varStatus="status">
		<tr>
			<td align="center">${status.count}</td>
			<td><input name="list[${status.index}].pdtid" readonly="readonly" value="${category.pdtid}"/></td>
			<td><input name="list[${status.index}].pdtname" value="${category.pdtname}"/></td>
			<td><input name="list[${status.index}].pdtdes" value="${category.pdtdes}"/></td>
			
		</tr>
	</c:forEach>
</table>

</form:form>
</body>
</html>