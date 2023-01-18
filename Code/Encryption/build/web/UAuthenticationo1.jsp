 <%@page import="utility.mail_send"%>
<%@page import="java.sql.*" %>
<%@page import="utility.DBConnectionn"%>
<%
String name=request.getParameter("fname");
String ftid=request.getParameter("ftid");
int idl=Integer.parseInt(ftid);
String email=request.getParameter("email");
String status="yes";
String secretkey=null;
String fileid=request.getParameter("fileid");
%>
<%
    Connection con=null,con2=null;
 
try{
  con2=DBConnectionn.getConnection();
    String qry1="select skey from upload where fuid='"+fileid+"'";
    PreparedStatement ps=con2.prepareStatement(qry1);
    ResultSet rs=ps.executeQuery(qry1);
    while(rs.next()){
    secretkey=rs.getString("skey");
    System.out.println("hi ram is here "+secretkey);
    }
        con=DBConnectionn.getConnection();
        System.out.println(idl+name);
    String sqlqru="update ufreq set status='"+status+"'where ftid='"+idl+"'and fname='"+name+"'";
    Statement st=con.createStatement();
       int i = st.executeUpdate(sqlqru);
if(i>0){
    System.out.println("sucess");
    System.out.println(secretkey+name+email);
    mail_send.sendMail(secretkey, name, email);
response.sendRedirect("UAuthenticationo.jsp?msg=Req updated");
}else{
     System.out.println("fail");
response.sendRedirect("UAuthenticationo.jsp?msg=Req update fail");
}
    


}catch(Exception e){
e.printStackTrace();
}
%>