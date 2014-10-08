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
<jsp:useBean id="user" class="pl.adamborowski.kaskjee.bean.AuthUser" scope="session"/>
<html>
<head>
    <mytags:common/>
</head>
<body class="metro">
<mytags:nav/>
<c:if test="${!user.logged}">
    <mytags:loginForm/>
</c:if>
<mytags:para
        caption="Hottest News">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum molestie faucibus urna. Aliquam nec tristique ipsum, feugiat molestie turpis. Nunc lobortis, justo vitae pulvinar egestas, enim ex gravida mi, sed eleifend augue nibh eget mi. Suspendisse potenti. Donec consectetur commodo eros et dapibus. Suspendisse nec vestibulum augue. Vestibulum porttitor ligula cursus lacinia congue. Nam mauris ligula, pellentesque nec neque vel, suscipit tristique nisl.</mytags:para>
</body>
</html>
