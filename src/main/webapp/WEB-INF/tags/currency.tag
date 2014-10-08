<%@ tag import="pl.adamborowski.kaskjee.CurrencyHelper" %>
<%@ tag description="tag for testing currencies" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@attribute name="value" required="true" rtexprvalue="true" %>
<%@attribute name="from" required="true" rtexprvalue="true" %>
<%@attribute name="to" required="true" rtexprvalue="true" %>
<jsp:doBody/>
<div class="bg-darkred fg-white padding10 margin10" style="display: block">
    ${value}${from} &approx; <%= CurrencyHelper.change(Float.parseFloat(value), from, to) %> ${to}.
</div>