<%@page import="mypack.DBManager"%>
<%
 if(session.getAttribute("aid")==null)
    {
    response.sendRedirect("../index.jsp");
    }
    else
    {
        String catName=request.getParameter("catName"); 
        DBManager db=new DBManager();
        String addDate=db.getCurrentDate();

        String addQuery="insert into tbl_category (catName,addDate)values ('"+catName+"','"+addDate+"')";
        Boolean rs=db.executeNonQuery(addQuery);
        if(rs==true)
        {
            response.sendRedirect("../add_category.jsp?msg=Added Category");
            
        }
        else
        {
           response.sendRedirect("../add_category.jsp?msg=Sorry!! Not Added Category");
        }
    }
%>