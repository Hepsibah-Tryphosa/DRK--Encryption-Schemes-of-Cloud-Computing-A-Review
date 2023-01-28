 <%@page import="java.sql.*" %>
<%@page import="utility.DBConnectionn"%>
<%
String name=request.getParameter("name");
String ide=request.getParameter("id");
int idl=Integer.parseInt(ide);
String role=request.getParameter("role");
String status="yes";
%>
<%
    Connection con=null;

try{
    if(role.equalsIgnoreCase("owner")){
        con=DBConnectionn.getConnection();
        System.out.println(idl+name);
    String sqlqru="update oreg set status='"+status+"'where id='"+idl+"'and name='"+name+"'";
    Statement st=con.createStatement();
       int i = st.executeUpdate(sqlqru);
if(i>0){
    System.out.println("sucess");
response.sendRedirect("OAuthentication.jsp?msg=status updated");
}else{
     System.out.println("fail");
response.sendRedirect("OAuthentication.jsp?msg=status update fail");
}}else if(role.equalsIgnoreCase("user")){
 con=DBConnectionn.getConnection();
    String sqlqru="update ureg set status='"+status+"'where id='"+idl+"'and name='"+name+"'";
    Statement st=con.createStatement();
       int i = st.executeUpdate(sqlqru);
if(i>0){
response.sendRedirect("UAuthentication.jsp?msg=status updated");
}else{
response.sendRedirect("UAuthentication.jsp?msg=status update fail");
}
}
    


}catch(Exception e){
e.printStackTrace();
}
%>