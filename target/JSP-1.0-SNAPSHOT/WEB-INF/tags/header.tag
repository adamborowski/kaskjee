<%@ tag import="java.util.ResourceBundle" %>
<%@ tag import="java.util.ArrayList" %>
<%@ tag import="pl.adamborowski.kaskjee.bean.Flashes" %>
<%@ tag description="header tag always visible on age" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/WEB-INF/tlds/mytags.tld" prefix="mytags" %>
<%-- The list of normal or fragment attributes can be specified here: --%>
<% ResourceBundle r = ResourceBundle.getBundle("kaskjee"); %>
<jsp:useBean id="user" class="pl.adamborowski.kaskjee.bean.AuthUser" scope="session"/>
<jsp:useBean id="flashes" class="pl.adamborowski.kaskjee.bean.Flashes" scope="session"/>
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
                <li><a href="index.jsp">Main</a></li>
                <li>
                    <a href="#" class="dropdown-toggle">Active users</a>
                    <ul class="dropdown-menu place-right" data-role="dropdown">
                        <mytags:users sort="ASC" color="red"/>
                    </ul>
                </li>
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
            <c:when test="${user.logged}">
                <a href="login.jsp">
                    <button class="element place-right icon-user">
                        logged as: ${user.username}
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
<% for (String flash : ((Flashes) session.getAttribute("flashes")).getMessages()) { %>
<div class="margin10 fg-white notice marker-on-top bg-<%=r.getString(flash+ ".color")%>">
    <%= flash.startsWith("message.") ? r.getString(flash) : flash %>
</div>
<% } %>
