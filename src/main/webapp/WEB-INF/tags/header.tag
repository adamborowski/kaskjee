<%@ tag import="java.util.ResourceBundle" %>
<%@ tag description="header tag always visible on age" pageEncoding="UTF-8" %>

<%-- Taglib directives can be specified here: --%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- The list of normal or fragment attributes can be specified here: --%>
<% ResourceBundle r = ResourceBundle.getBundle("kaskjee"); %>
<%
    Boolean isLogged = false;
    if (session != null) {
        isLogged = true;
    }
    String msg = "";
%>
<jsp:doBody/>

<%--<c:if test="${not empty msg}">--%>
<%--<div style="font-weight: bold">--%>
<%--<c:out value="${msg}"/>--%>
<%--</div>--%>
<%--</c:if>--%>
<nav class="navigation-bar">
    <nav class="navigation-bar-content">
        <div class="element">
            <a class="dropdown-toggle" href="#">
                <%=r.getString("title")%>
            </a>
            <ul class="dropdown-menu" data-role="dropdown">
                <li><a href="#">Main</a></li>
                <li><a href="#">File Open</a></li>
                <li class="divider"></li>
                <li><a href="#">Print...</a></li>
                <li class="divider"></li>
                <li><a href="#">Exit</a></li>
            </ul>
        </div>

        <span class="element-divider"></span>
        <a class="element brand" href="#"><span class="icon-spin"></span></a>
        <a class="element brand" href="#"><span class="icon-printer"></span></a>
        <span class="element-divider"></span>

        <div class="element input-element">
            <form>
                <div class="input-control text">
                    <input type="text" placeholder="Search...">
                    <button class="btn-search"></button>
                </div>
            </form>
        </div>

        <div class="element place-right">
            <a class="dropdown-toggle" href="#">
                <span class="icon-cog"></span>
            </a>
            <ul class="dropdown-menu place-right" data-role="dropdown">
                <li><a href="#">Products</a></li>
                <li><a href="#">Download</a></li>
                <li><a href="#">Support</a></li>
                <li><a href="#">Buy Now</a></li>
            </ul>
        </div>
        <span class="element-divider place-right"></span>
        <a class="element place-right" href="#"><span class="icon-locked-2"></span></a>
        <span class="element-divider place-right"></span>
        <button class="element image-button image-left place-right">
            <%--Sergey Pimenov--%>
            <%--<img src="images/211858_100001930891748_287895609_q.jpg"/>--%>
                <c:choose>
                    <c:when test="${isLogged}">
                        <%-- logout link --%>
                        <div>
                            <a href="UserServlet">Wyloguj</a>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <%-- login form --%>
                        <form action="UserServlet" method="post">
                            <div>
                                Login: <input name="login"/>
                            </div>
                            <div>
                                Hasło: <input name="passwd" type="password"/>
                            </div>
                            <div>
                                <input type="submit" value="Zaloguj"/>
                            </div>
                        </form>
                    </c:otherwise>
                </c:choose>
        </button>
    </nav>
</nav>
