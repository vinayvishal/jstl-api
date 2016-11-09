<%-- 
 Copyright 2003 Sun Micorsystems, Inc. All rights reserved.
 SUN PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="fmt_rt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="tck" uri="http://java.sun.com/jstltck/jstltck-util" %>
<%@ page import="java.util.TimeZone,java.util.Date" %>
<tck:test testName="positiveTimezoneValueTest">
   <%
        TimeZone tz = TimeZone.getTimeZone("PST");
        pageContext.setAttribute("tz", tz);
        Date date = new Date(883192294202L);
        pageContext.setAttribute("dte", date);
    %>
    <c:set var="mtz" value="PST"/>
    <!-- EL: Behavioral test of value attribute -->
    <!-- Timezone object -->
    <fmt:setTimeZone value="${tz}"/>
    <fmt:formatDate type="both" dateStyle="full" timeStyle="full" value="${dte}"/>
    
    <!-- Timezone as a String -->
    <fmt:setTimeZone value="${mtz}"/>
    <fmt:formatDate type="both" dateStyle="full" timeStyle="full" value="${dte}"/>
   
    <fmt:setTimeZone value="America/Los_Angeles"/>
    <fmt:formatDate type="both" dateStyle="full" timeStyle="full" value="${dte}"/>
   
    <!-- RT: Behavioral test of value attribute -->
    <!-- Timezone object -->
    <fmt_rt:setTimeZone value='<%= (TimeZone) pageContext.getAttribute("tz") %>'/>
    <fmt:formatDate type="both" dateStyle="full" timeStyle="full" value="${dte}"/>
    
    <!-- Timezone as a String -->
    <fmt_rt:setTimeZone value='<%= (String) pageContext.getAttribute("mtz") %>'/>
    <fmt:formatDate type="both" dateStyle="full" timeStyle="full" value="${dte}"/>
    
    <fmt_rt:setTimeZone value="GMT-1:00"/>
    <fmt:formatDate type="both" dateStyle="full" timeStyle="full" value="${dte}"/>   
</tck:test>