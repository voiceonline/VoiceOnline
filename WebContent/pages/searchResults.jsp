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
      <link rel="stylesheet" type="text/css" href="/VoiceOnline/resources/css/rangeSlider.css">
      <link rel="stylesheet" type="text/css" href="/VoiceOnline/resources/css/master.css">
      <link rel="stylesheet" type="text/css" href="/VoiceOnline/resources/css/responsive.css">
      <link rel="stylesheet" type="text/css" href="/VoiceOnline/resources/css/searchResult.css">
      <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:300italic,400italic,700italic,400,300,700' rel='stylesheet' type='text/css'>
      <link rel="stylesheet" type="text/css" href="fonts.css">
   </head>
   <body>
     <%@ include file="header.jsp" %>

	<% 
		String searchterm = Utils.getString(request.getParameter("searchterm"));
		SearchProducts searchProducts = new SearchProducts();
		LinkedHashMap<String, Object> productList = searchProducts.search(searchterm);
		
		
	%>
	
	 					<div class="sRShop marginB30">
                              <div class="row featrHding marginB20">
                                 <span class="cpwTradebold">SHOP</span>
                                 
                              </div>
                              <div class="row featrCntnt marginB40">
                                 <div class="img"><img src="/VoiceOnline/resources/images/sRPhone01.png" alt="Apple iPhone 6" /></div>
                                 <div class="sRShopMobInfo">
                                    <h2>Apple iPhone 6</h2>
                                    <p>Available on Pay monthly, Pay as you go, SIM free and as on upgrade</p>
                                 </div>
                              </div>
                              <div class="row featrCntnt marginB40">
                                 <div class="img"><img src="/VoiceOnline/resources/images/sRPhone02.png" alt="Apple iPhone 6" /></div>
                                 <div class="sRShopMobInfo">
                                    <h2>Apple iPhone 5S</h2>
                                    <p>Available on Pay monthly, Pay as you go, SIM free and as on upgrade</p>
                                 </div>
                              </div>
                              <div class="row featrCntnt">
                                 <div class="img"><img src="/VoiceOnline/resources/images/sRPhone01.png" alt="Apple iPhone 6" /></div>
                                 <div class="sRShopMobInfo">
                                    <h2>Apple iPhone 5c</h2>
                                    <p>Available on Pay monthly, Pay as you go, SIM free and as on upgrade</p>
                                 </div>
                              </div>
                           </div>

</body>
</html>