<%@ tag import="java.util.ResourceBundle" %>
<%@ tag description="common HEAD imports" pageEncoding="UTF-8" %>
<% ResourceBundle r = ResourceBundle.getBundle("kaskjee"); %>
<title>
    <%=r.getString("title")%>
</title>
<link rel="stylesheet" href="resources/metro-bootstrap.min.css">
<link rel="stylesheet" href="resources/jquery-ui.min.css">
<link rel="stylesheet" href="resources/iconFont.min.css">
<link rel="stylesheet" href="resources/compass/stylesheets/screen.css">
<script src="resources/jquery-2.1.1.min.js"></script>
<script src="resources/jquery-ui.min.js"></script>
<script src="resources/metro.min.js"></script>