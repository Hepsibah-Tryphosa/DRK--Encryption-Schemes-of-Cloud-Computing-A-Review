 <%@page import="utility.mail_send"%>
<%@page import="java.sql.*" %>
<%@page import="utility.DBConnectionn"%>
<%
String name=request.getParameter("name");
String ide=request.getParameter("id");
int idl=Integer.parseInt(ide);

String status="yes";
%>
<%
    Connection con=null;

try{
  
        con=DBConnectionn.getConnection();
        System.out.println(idl+name);
    String sqlqru="update oreg set cstatus='"+status+"'where id='"+idl+"'and name='"+name+"'";
    Statement st=con.createStatement();
       int i = st.executeUpdate(sqlqru);
if(i>0){

    System.out.println("sucess");
response.sendRedirect("OAuthenticationo.jsp?msg=status updated");
}else{
     System.out.println("fail");
response.sendRedirect("OAuthenticationo.jsp?msg=status update fail");
}
    


}catch(Exception e){
e.printStackTrace();
}
%>