<%@page import="java.util.LinkedHashMap"%>
<%@page import="com.org.voiceonline.search.SearchProducts"%>
 <%@page import="com.org.voiceonline.search.SearchProducts"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@page import="com.org.voiceonline.generic.Utils"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<% 
		String searchterm = Utils.getString(request.getParameter("searchterm"));
		SearchProducts searchProducts = new SearchProducts();
		LinkedHashMap<String, Object> productList = searchProducts.search(searchterm);
		
		
	%>

</body>
</html>