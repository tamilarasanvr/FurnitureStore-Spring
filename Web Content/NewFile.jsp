<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:forEach var="ProductBean" items="${list}"  >

<c:out value="${ProductBean.productId}"/>
<%-- <c:out value="${SampleBean.password}"/>
<td><c:out value="${SampleBean.aadharnumber}"/></td>
<td><c:out value="${SampleBean.contactnumber}"/></td>
<td><c:out value="${SampleBean.mailid}"/></td></tr>
--%>

</c:forEach>
 </body>
</html>