<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.spring.myspring.BoardDAOImpl, com.spring.myspring.BoardVO"%>
<%
	String sid = request.getParameter("id");
	if (sid != ""){  
		int id = Integer.parseInt(sid);
		BoardVO u = new BoardVO();
		u.setSeq(id);
		BoardDAOImpl i = new BoardDAOImpl();
		i.deleteBoard(id);
	}
	response.sendRedirect("posts.jsp");
%>