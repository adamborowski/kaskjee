<%--
  Created by IntelliJ IDEA.
  User: 137252ba
  Date: 06.10.14
  Time: 15:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@taglib uri="/WEB-INF/tlds/mytags.tld" prefix="mytags" %>
<jsp:useBean id="authUser" class="pl.adamborowski.kaskjee.bean.AuthUser" scope="session"/>
<html>
<head>
    <mytags:common/>
</head>
<body class="metro">
<mytags:nav/>
<mytags:loginForm/>
</body>
</html>
