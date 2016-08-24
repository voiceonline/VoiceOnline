<%@page import="com.org.voiceonline.search.SearchProducts"%>
<%@page import="com.org.voiceonline.recognize.RecognizeVoice"%>
<%@page import="com.org.voiceonline.generic.Utils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@page import="java.util.LinkedHashMap"%>

<%
response.setCharacterEncoding("UTF-8");
String action = Utils.getString(request.getParameter("action"));

if(action.equals("recognize")){
	
	RecognizeVoice recognizeVoice = new RecognizeVoice();	
	String recognizedText = recognizeVoice.recognize();
	
	out.println(recognizedText);
} 
if(action.equals("searchProduct")){
	
	String searchText = Utils.getString(request.getParameter("searchText"));
	
	SearchProducts searchProducts = new SearchProducts();
	out.println(searchProducts.search(searchText));		
}
%>