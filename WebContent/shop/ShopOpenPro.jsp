<%@page import="com.baemin.shop.ShopDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
System.out.println("------CancelOrderPro.jsp");
int no = Integer.parseInt(request.getParameter("shopNo"));
int status = Integer.parseInt(request.getParameter("shopstatus"));
System.out.println("openpro_no = " + no);
System.out.println("openpro_status = " + status);
int result=0;
ShopDAO shopdao=ShopDAO.getInstance();
if(status==0){
result = shopdao.shopOpen(no);
}
if(status==1){
result = shopdao.magam(no); 
}
%>
${result}