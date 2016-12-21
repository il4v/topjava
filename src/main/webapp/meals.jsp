<%@ page import="ru.javawebinar.topjava.model.MealWithExceed" %>
<%@ page import="java.util.List" %>
<%@ page import="ru.javawebinar.topjava.util.TimeUtil" %><%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 15.12.2016
  Time: 16:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Meal list</title>
    <style>
        .normal {
            color: #19A15F;
        }

        .exceeded {
            color: #DE5347
        }
    </style>
</head>
<body>
<h2>Meal List</h2>
<table border="1">
    <%
        List<MealWithExceed> meals = (List<MealWithExceed>) request.getAttribute("meals");
        for (MealWithExceed meal : meals) {
    %>
    <tr class=<%=meal.isExceed() ? "normal" : "exceeded"%>>
        <td><%=meal.getDateTime().format(TimeUtil.DATE_TIME_FORMATTER)%>
        </td>
        <td><%=meal.getDescription()%>
        </td>
        <td><%=meal.getCalories()%>
        </td>
    </tr>
    <% } %>
</table>
</body>
</html>
