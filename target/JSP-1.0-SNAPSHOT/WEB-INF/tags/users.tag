<%@ tag import="java.util.ResourceBundle" %>
<%@ tag import="java.util.ArrayList" %>
<%@ tag import="pl.adamborowski.kaskjee.bean.Flashes" %>
<%@ tag description="header tag showing user list" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@attribute name="sort" required="true" rtexprvalue="true" %>
<%@attribute name="color" required="false" rtexprvalue="true" %>
<%-- The list of normal or fragment attributes can be specified here: --%>
<% ResourceBundle r = ResourceBundle.getBundle("kaskjee"); %>
<jsp:useBean id="users" class="pl.adamborowski.kaskjee.bean.UserList" scope="application"/>
<jsp:doBody/>
<c:if test="${empty color}">
    <c:set var="color" value="green"/>
</c:if>
<c:forEach items="<%=users.asSort(sort)%>" var="user">
    <fmt:formatDate value="${user.lastLogin}" var="lastLoginFormatted" pattern="Y-m-d H:m:s"/>
    <li>
        <a href="#" style="display: inline-block; width: 300px">
                ${user.username} (<span style="color: ${color}">${lastLoginFormatted}</span>)
        </a>
    </li>
</c:forEach>