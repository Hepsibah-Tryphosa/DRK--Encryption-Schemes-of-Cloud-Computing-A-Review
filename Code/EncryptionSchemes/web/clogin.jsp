<%  if(request.getParameter("cname").equals("cloud") && request.getParameter("cpass").equals("cloud"))
{
    response.sendRedirect("CloudHome.jsp?msg=success");
}
else{
    response.sendRedirect("cloud.jsp?msg=failed");
}
%>