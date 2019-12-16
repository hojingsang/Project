<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% request.setAttribute("target", "reservation");
		RequestDispatcher dis = request.getRequestDispatcher("templat.jsp");
		dis.forward(request, response); %>
		
