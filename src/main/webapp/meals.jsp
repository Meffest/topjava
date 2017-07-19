<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="ru.javawebinar.topjava.util.TimeUtil" %>
<html>
<head>
    <title>Meal</title>
    <style>
        .normal{color: green}
        .exceeded{color: red}
    </style>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<h2>Meal</h2>
<table border="1">
    <thead>
        <tr>
            <th>Дата\Время</th>
            <th>Описание</th>
            <th>Калории</th>
            <%--<th>Удалить</th>--%>
            <%--<th>Изменить</th>--%>
        </tr>
    </thead>
    <tbody>
    <c:forEach items="${mealList}" var="meal">
        <jsp:useBean id="meal" scope="page" type="ru.javawebinar.topjava.model.MealWithExceed"/>
        <tr class="${meal.exceed ? 'exceeded':'normal'}">
        <td>
            <%=TimeUtil.toString(meal.getDateTime())%>
        </td>
            <td>${meal.description}</td>
            <td>${meal.calories}</td>
            </tr>
       </c:forEach>

    </tbody>

</table>
</body>
</html>