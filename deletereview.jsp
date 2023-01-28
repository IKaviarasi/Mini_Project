<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String id=request.getParameter("rid");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/mobilespecifications","root","");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM userreview WHERE rid="+id);
out.println("Your Review is deleted Successfully!!!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>