<%@ page import="edu.wctc.studentdata.Students" %>
<%@ page import="edu.wctc.studentdata.Individual" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="edu.wctc.studentdata.FindColumns" %>
<%@ include file="index.jsp"%>
<%--
  Created by IntelliJ IDEA.
  User: Zach
  Date: 9/12/2018
  Time: 8:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1>Simple Web Page</h1>
<p>The Test.</p>

<%
    Students theStudents = new Students();

    ArrayList<Individual> result;

    result = theStudents.findStudents(FindColumns.ACCTNUM, request.getParameter("searchString"));

    for (Individual i: result) { %>

Student: <%=
        i.getAccountNumber() + " " + i.getFname() + " " + i.getLname()
        %>
<br>
    <%}%>

<%
    result = theStudents.findStudents(FindColumns.LNAME, request.getParameter("searchString"));

    for (Individual i: result) { %>

Student:
<%=
        i.getAccountNumber() + " " + i.getFname() + " " + i.getLname()
        %>
<br>
    <%}%>

</body>
</html>
