 <%@page import="java.sql.*" %>
<%@page import="utility.DBConnectionn"%>
<%@page import="action.ologin"%>
<%
String name=request.getParameter("name");
String id1=request.getParameter("iden");
int id=Integer.parseInt(id1);
int conty=1024;

String d=request.getParameter("space");
int k=Integer.parseInt(d);
int sum=k*conty;
String space=String.valueOf(sum);
String cost=request.getParameter("cost");
String astatus= (String)session.getAttribute("status");
System.out.println(space+cost+astatus+id);
%>
<%
Connection con=null;
PreparedStatement ps=null;
try{
con=DBConnectionn.getConnection();
String sqlqru="update oreg set space='"+space+"', cost='"+cost+"' where id='"+id+"'and status='"+astatus+"'";
 Statement st=null;
      
             st = con.createStatement();
                int i = st.executeUpdate(sqlqru);
if(i>0){
response.sendRedirect("CloudSpaceReq.jsp?msg=SpaceProvided");
}else{
response.sendRedirect("CloudSpaceReq.jsp?msg=SpaceNotProvidede");
}
%>


<%
}catch(Exception e){
e.printStackTrace();
}
%>