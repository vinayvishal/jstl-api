<%@page contentType="text/html"%>
<html>
<head><title>JSP Page</title></head>
<body>

<%! 
    public void throwIt() throws ServletException {
        throw new ServletException("ServletException Thrown from included resource");
    }
%>
<% throwIt(); %>
</body>
</html>