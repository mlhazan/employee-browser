<%-- 
    Document   : list
    Created on : Sep 30, 2016, 1:14:53 PM
    Author     : Hasan
--%>
<%@ page import="java.util.*,com.employee.EmployeeBean" %>
<jsp:useBean id="employee" class="com.employee.EmployeeBean"/>
<html>
    <body>
        <b>Current Employees</b>
        <ul>
            <%
                 Vector v = (Vector) request.getAttribute("list");
                 Iterator i = v.iterator();
                 while (i.hasNext()) {
                      employee = (EmployeeBean) i.next();
            %>
            <li>
                <a href="/FetchEmployeeServlet?cmd=get&id=
                   <jsp:getProperty name="employee" property="id"/>">
                    <jsp:getProperty name="employee" property="lastName"/>,
                    <jsp:getProperty name="employee" property="firstName"/></a>
                    <% }%>
        </ul>
    </body>
</html>