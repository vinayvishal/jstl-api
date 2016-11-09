<%--
   Copyright 2003 Sun Microsystems, Inc.  All rights reserved.
   SUN PROPRIETARY/CONFIDENTIAL.  Use is subject license terms.
--%>

<%@ page contentType="text/plain" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:choose>
    <c:when test="${fn:endsWith('string', '')}">
        Test PASSED
    </c:when>
    <c:otherwise>
        Test FAILED.  Expected fn:endsWith('string', '') to return TRUE,
        but FALSE was returned.
    </c:otherwise>
</c:choose>