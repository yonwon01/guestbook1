<%@page import="com.bigdata2017.guestbook.dao.GuestBookDao"%>
<%@page import="com.bigdata2017.guestbook.vo.GuestBookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String name=request.getParameter("name");
String password=request.getParameter("pass");
String content=request.getParameter("content");

GuestBookVo vo=new GuestBookVo();
vo.setName(name);
vo.setPassword(password);
vo.setContent(content);



new GuestBookDao().insert(vo);

response.sendRedirect(request.getContextPath());
%>
