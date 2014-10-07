<%@ tag import="java.util.ResourceBundle" %>
<%@ tag description="login form" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% ResourceBundle r = ResourceBundle.getBundle("kaskjee"); %>
<jsp:useBean id="user" class="pl.adamborowski.kaskjee.bean.AuthUser" scope="session"/>
<c:url var="login" value="/UserServlet"/>
<div class="a-login-form">
    <c:choose>
        <c:when test="${user.logged}">
            <%-- logout link --%>
            <h3><%=r.getString("message.logout")%>
            </h3>
            <a href="${login}" class="button danger large"><%=r.getString("logout")%>
            </a>
        </c:when>
        <c:otherwise>
            <h3><%=r.getString("message.login")%>
            </h3>

            <form action="${login}" method="post">
                <span class="input-control text">
                    <input type="text" name="username" value="" placeholder="username"/>
                    <button class="btn-clear"></button>
                </span>
                <span class="input-control password">
                    <input type="password" name="password" value="" placeholder="password"/>
                    <button class="btn-reveal"></button>
                </span>
                <span>
                    <button type="submit" class="large success"><%=r.getString("login")%>
                    </button>
                </span>
            </form>
        </c:otherwise>
    </c:choose>
</div>