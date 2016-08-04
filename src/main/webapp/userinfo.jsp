<%@ page import="com.alex.dto.UserDto" %>
<%@ page import="com.alex.service.api.UserService" %>
<%@ page import="com.alex.service.impl.UserServiceImpl" %><%--
  Created by IntelliJ IDEA.
  User: Алексей
  Date: 04.08.2016
  Time: 20:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User profile</title>
</head>
<body>

    <%
        long id = Long.parseLong(request.getParameter("id"));
        UserService userService = UserServiceImpl.getInstance();
        UserDto userDto = userService.getUserById(id);
    %>
    User #<%=id%>: <%=userDto.getLogin()%> <br>
    Name: <%=userDto.getName()%> <br>
    Age: <%=userDto.getAge()%> <br>
</body>
</html>
