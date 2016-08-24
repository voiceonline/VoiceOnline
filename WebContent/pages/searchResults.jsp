<%@page import="com.org.voiceonline.generic.Constants"%>
<%@page import="java.util.LinkedHashMap"%>
<%@page import="com.org.voiceonline.search.SearchProducts"%>
<%@page import="com.org.voiceonline.generic.Utils"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
   <head>
      <meta charset="UTF-8">
      <meta name="format-detection" content="telephone=no">
      <meta name="viewport" content="width=device-width, initial-scale=1,user-scalable=no">
      <title>Home</title>
      <script src='https://code.responsivevoice.org/responsivevoice.js'></script>
      <link rel="stylesheet" type="text/css" href="/VoiceOnline/resources/css/bootstrap.css">
      <link rel="stylesheet" type="text/css" href="/VoiceOnline/resources/css/icons.css">
      <!-- <link rel="stylesheet" type="text/css" href="/VoiceOnline/resources/css/rangeSlider.css"> -->
      <link rel="stylesheet" type="text/css" href="/VoiceOnline/resources/css/master.css">
      <link rel="stylesheet" type="text/css" href="/VoiceOnline/resources/css/responsive.css">
      <link rel="stylesheet" type="text/css" href="/VoiceOnline/resources/css/searchResult.css">
      <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:300italic,400italic,700italic,400,300,700' rel='stylesheet' type='text/css'>
      <link rel="stylesheet" type="text/css" href="fonts.css">
   </head>
   <body>
     <%@ include file="header.jsp" %>
     <div class="sRShop marginB30">
                   <div class="row featrHding marginB20">
                      <span class="cpwTradebold">SHOP</span>
	</div>
	<% 
		String searchterm = Utils.getString(request.getParameter("searchterm"));
		SearchProducts searchProducts = new SearchProducts();
		LinkedHashMap<String, Object> productMap = searchProducts.search(searchterm);
		LinkedHashMap<String, Object> productInfoMap = null;
		LinkedHashMap<String, String> attributeMap = null;
		
		
		for(String key : productMap.keySet()){			
			productInfoMap = (LinkedHashMap<String, Object>)productMap.get(key);
			attributeMap = (LinkedHashMap<String, String>)productInfoMap.get(Constants.ATTRIB_MAP);
%>
	               
                   <div class="row featrCntnt marginB40">
                      <div class="img"><img style="width:50px;height:50px;" alt="<%=productInfoMap.get(Constants.PRODUCT_NAME) %>" src="/VoiceOnline/resources/images/coming_soon.png" /></div>
                      <div class="sRShopMobInfo">
                         <h2><%=productInfoMap.get(Constants.PRODUCT_NAME) %></h2>
                         <p><%=productInfoMap.get(Constants.PRODUCT_DESC) %></p>
                         <p><b>&#8377;<%=attributeMap.get("Price")%></b></p>
                      </div>
                   </div>              
                
  <%}%>
 </div>
</body>
</html>