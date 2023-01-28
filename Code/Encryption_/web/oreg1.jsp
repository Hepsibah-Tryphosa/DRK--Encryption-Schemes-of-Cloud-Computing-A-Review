 <%@page import="java.sql.*" %>
<%@page import="utility.DBConnectionn"%>

<%
String name=request.getParameter("oname");
String email=request.getParameter("oemail");
String mobile=request.getParameter("omobile");
String pswd=request.getParameter("opassword");
String role=request.getParameter("role");
%>
<%
Connection con=null;
PreparedStatement ps=null;
try{
    if(role.equalsIgnoreCase("owner")){
con=DBConnectionn.getConnection();
ps=con.prepareStatement("insert into oreg(name,email,mobile,pswd,role)values(?,?,?,?,?)");
ps.setString(1, name);
ps.setString(2, email);
ps.setString(3, mobile);
ps.setString(4, pswd);
ps.setString(5,role);
int i=0;
i=ps.executeUpdate();
if(i>0){
response.sendRedirect("index.html?msg=owner registration sucess");
}else{
response.sendRedirect("index.html?msg=owner registration failure");
}}else if(role.equalsIgnoreCase("user")){
con=DBConnectionn.getConnection();
ps=con.prepareStatement("insert into ureg(name,email,mobile,pswd,role)values(?,?,?,?,?)");
ps.setString(1, name);
ps.setString(2, email);
ps.setString(3, mobile);
ps.setString(4, pswd);
ps.setString(5,role);
int i=0;
i=ps.executeUpdate();
if(i>0){
response.sendRedirect("index.html?msg= user registration sucess");
}else{
response.sendRedirect("index.html?msg= user registration failure");
}

}
}catch(Exception e){
e.printStackTrace();}

%>