<%--
  Created by IntelliJ IDEA.
  User: 137252ba
  Date: 06.10.14
  Time: 15:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>DUPA</title>
    <link rel="stylesheet" href="resources/metro-bootstrap.min.css">
    <link rel="stylesheet" href="resources/jquery-ui.min.css">
    <link rel="stylesheet" href="resources/iconFont.min.css">
    <script src="resources/jquery-2.1.1.min.js"></script>
    <script src="resources/jquery-ui.min.js"></script>
    <script src="resources/metro.min.js"></script>
</head>
<body class="metro">
<table class="table bordered">
    <thead>
    <tr>
        <th class="text-left">Name</th>
        <th class="text-left">Time CP</th>
        <th class="text-left">Network</th>
        <th class="text-left">Traffic</th>
        <th class="text-left">Tiles update</th>
    </tr>
    </thead>

    <tbody>
    <tr><td>Bing</td><td class="right">0:00:01</td><td class="right">0,1 Mb</td><td class="right">0 Mb</td><td class="right">0,1 Mb</td></tr>
    <tr><td>Internet Explorer</td><td class="right">0:00:01</td><td class="right">0,1 Mb</td><td class="right">0 Mb</td><td class="right">0,1 Mb</td></tr>
    <tr><td>Chrome</td><td class="right">0:00:01</td><td class="right">0,1 Mb</td><td class="right">0 Mb</td><td class="right">0,1 Mb</td></tr>
    <tr><td>News</td><td class="right">0:00:01</td><td class="right">0,1 Mb</td><td class="right">0 Mb</td><td class="right">0,1 Mb</td></tr>
    <tr><td>Weather</td><td class="right">0:00:01</td><td class="right">0,1 Mb</td><td class="right">0 Mb</td><td class="right">0,1 Mb</td></tr>
    <tr><td>Music</td><td class="right">0:00:01</td><td class="right">0,1 Mb</td><td class="right">0 Mb</td><td class="right">0,1 Mb</td></tr>
    </tbody>

    <tfoot></tfoot>
</table>
<div class="tab-control" data-role="tab-control">
    <ul class="tabs">
        <li class="active"><a href="#_page_1">Tab 1</a></li>
        <li><a href="#_page_2">Other Tab</a></li>
        <li><a href="#_page_3"><i class="icon-rocket"></i></a></li>
        <li class="place-right"><a href="#_page_4"><i class="icon-cog"></i></a></li>
    </ul>

    <div class="frames">
        <div class="frame" id="_page_1">...</div>
        <div class="frame" id="_page_2">...</div>
        <div class="frame" id="_page_3">...</div>
    </div>
</div>
</body>
</html>
