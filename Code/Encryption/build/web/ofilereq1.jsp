<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="utility.DBConnectionn"%>

<%
String name=request.getParameter("name");
String e=request.getParameter("id");
int id=Integer.parseInt(e);
String fileid=request.getParameter("fuid");
String filename=request.getParameter("email");
String oemail=(String)session.getAttribute("oemail");
%>
<%
Connection con=null;
PreparedStatement ps=null;
try{
 
con=DBConnectionn.getConnection();
ps=con.prepareStatement("insert into ufreq(fileid,id,name,uemail,fname) values(?,?,?,?,?)");
ps.setString(1, fileid);
ps.setInt(2, id);
ps.setString(3, name);
ps.setString(4,oemail);
ps.setString(5, filename);

int i=0;
i=ps.executeUpdate();
if(i>0){
response.sendRedirect("ofilereq.jsp?msg=user requset send sucessfully");
}else{
response.sendRedirect("ofilereq.jsp?msg=user requset send fail");
}
}catch(Exception e1){
e1.printStackTrace();
}
%>