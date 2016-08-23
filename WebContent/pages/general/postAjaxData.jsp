<%@page import="com.org.voiceonline.generic.Utils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@page import="java.util.LinkedHashMap"%>

<%
response.setCharacterEncoding("UTF-8");
String page1 = Utils.getString(request.getParameter("page1"));

/* if(page1.equals("InactiveRecord")){
	String monId = Utils.getString(request.getParameter(Constants.MONITOR_ID));
	String userId = Utils.getString(session.getAttribute(Constants.USER_ID));
	System.out.println("userId==>" + userId + "==" + monId);
	
	if(!monId.equals("") && !userId.equals("")){
		LinkedHashMap<String, String> paramMap = new LinkedHashMap<String, String>();
		paramMap.put(Constants.MONITOR_ID, monId);
		paramMap.put(Constants.USER_ID, userId);
		Reports reports = new Reports();
		Integer success = reports.inactiveRecord(paramMap);
		out.println(success);		
	}else{
		out.println("-1");
	}
} */
%>