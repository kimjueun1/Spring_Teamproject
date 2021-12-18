<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.spring.moviereview.myboard.BoardDAOImpl,com.spring.moviereview.myboard.BoardVO"%>
<%
	String sid = request.getParameter("id");
	if (sid != ""){  
		int id = Integer.parseInt(sid);
		BoardVO u = new BoardVO();
		u.setSeq(id);
		BoardDAOImpl DAO = new BoardDAOImpl();
		DAO.deleteBoard(id);
	}
	response.sendRedirect("../list");
%>