<%@ tag import="java.util.ResourceBundle" %>
<%@ tag description="header tag always visible on age" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ attribute name="isLogged" required="true" rtexprvalue="true" %>
<%-- The list of normal or fragment attributes can be specified here: --%>
<% ResourceBundle r = ResourceBundle.getBundle("kaskjee"); %>
<jsp:doBody/>
<%--<c:if test="${not empty msg}">--%>
<%--<div style="font-weight: bold">--%>
<%--<c:out value="${msg}"/>--%>
<%--</div>--%>
<%--</c:if>--%>
<nav class="navigation-bar dark">
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

        <%--Sergey Pimenov--%>
        <%--<img src="images/211858_100001930891748_287895609_q.jpg"/>--%>
        <c:choose>
            <c:when test="${isLogged == \"1\"}">
                <a href="login.jsp">
                    <button class="element place-right icon-user">
                        <%= r.getString("logged_as") + request.getSession().getAttribute("username") %>
                    </button>
                </a>
            </c:when>
            <c:otherwise>
                <a href="login.jsp">
                    <button class="element place-right icon-user">
                        <%= r.getString("nav_login")%>
                    </button>
                </a>
            </c:otherwise>
        </c:choose>

    </nav>
</nav>
<% String msg = request.getParameter("message"); %>
<% if (msg != null && !msg.isEmpty()) { %>
<div class="margin10 fg-white notice marker-on-top bg-<%=r.getString(msg+".color")%>">
    <%= msg.startsWith("message.") ? r.getString(msg) : msg %>
</div>
<% } %>
