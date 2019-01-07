<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>log out </title>
        <script>
            function noback()
            {
                window.history.forward();
                window.setTimeout("window.location.href='../index.jsp'",200);
            }
            </script>
    </head>
    <body onload="noback()">
        <%
        session.invalidate();
        %>
    </body>
</html>
