<%@ page import="java.time.LocalDate" %>
<%@ page import="java.util.Date" %>

<%@ page import="java.util.List, java.util.ArrayList" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="ch" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>
<h2>Hello World!</h2>

<%! int count = 99;
    int money;%>

<%= 4000%>

<%
    List<String> names = new ArrayList();
    names.add("Chigozie");
    names.add("Sagar Ghimire");
    names.add("Mandella");
    names.add("Chinedu");
    request.setAttribute("names", names);

    System.out.println(names);

    String[][] temperature = {{"Nov 6", "32", "26"}, {"Nov 7", "32", "26"}, {"Nov 8", "32", "26"}};
    request.setAttribute("temperature", temperature);

%>

<div>
    <ch:forEach var="name" items="${names}">
        <p>
            Item: <ch:out value="${name}"/>
        </p>
    </ch:forEach>
    Names: ${names}
</div><br/>


<table style="background: darkgrey">
    <th>Date</th>
    <th>High</th>
    <th>Low</th>


    <c:forEach var="temp" items="${temperature}">
        <tr>
            <td>
                    ${temp[0]}
            </td>
            <td>
                    ${temp[1]}
            </td>
            <td>
                    ${temp[2]}
            </td>
        </tr>

    </c:forEach>

</table>

<%   Date dt = new Date();%>
Hello, time is now <%=  dt %>
<div>
    <%@ include file="home.jsp" %>

</div>
</body>
</html>
