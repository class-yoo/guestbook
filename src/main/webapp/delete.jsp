<%@page import="com.cafe24.guestbook.dao.GuestbookDao"%>
<%@page import="com.cafe24.guestbook.vo.GuestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	String no = request.getParameter("no");
    	String password = request.getParameter("password");
    	
    	
    	GuestbookVo vo = new GuestbookVo();
    	vo.setNo(Long.parseLong(no));
    	vo.setPassword(password);
    	
    	new GuestbookDao().deleteGuestbook(vo);
    	
    	response.sendRedirect("/guestbook"); 
    	
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>