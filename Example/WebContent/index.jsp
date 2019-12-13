<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <% request.setAttribute("target","Home");
    	RequestDispatcher dispatcher = request.getRequestDispatcher("templat.jsp");
    	dispatcher.forward(request,response);
    %>