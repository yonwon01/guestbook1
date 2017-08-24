

<%@page import="com.bigdata2017.guestbook.dao.GuestBookDao"%>
<%@page import="com.bigdata2017.guestbook.vo.GuestBookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String password=request.getParameter("password");
String no=request.getParameter("no");
GuestBookVo vo=new GuestBookVo();
vo.setPassword(password);
vo.setNumber(Integer.parseInt(no));


new GuestBookDao().delete(vo);
response.sendRedirect(request.getContextPath());
%>