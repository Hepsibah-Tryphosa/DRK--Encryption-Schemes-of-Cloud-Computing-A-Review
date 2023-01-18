<%@page import="utility.DBConnectionn"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.OutputStream"%>

<%@page import="java.sql.Blob"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>



<%@page import="java.util.*"%>


<%
    String secretkey = request.getParameter("skey");
     String fd = request.getParameter("fileid");
     int fuid=Integer.parseInt(fd);
    try {
    
System.out.println(secretkey);

  String fname=null;
   
    System.out.println(fuid);
    Connection con = DBConnectionn.getConnection();

    Statement st=con.createStatement();
         
     InputStream is=null;
               ResultSet rt=st.executeQuery("select fname,ofile from upload where skey='"+secretkey+"'  and fuid='"+fuid+"' ");
if(rt.next()){
         is=rt.getAsciiStream("ofile");
         fname=rt.getString("fname");
         
          BufferedReader br=new BufferedReader(new InputStreamReader(is));
         String temp=null;
         StringBuffer sb=new StringBuffer();
         while((temp=br.readLine())!=null){
            sb.append(temp);
         }
          br.close();
          
          response.setHeader("Content-Disposition","attachment;filename=\""+fname+"\"");        
         out.write(sb.toString());
         
       String uemail=session.getAttribute("uemail").toString();
           
             DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
	   //get current date time with Date()
	     Date date = new Date();
	     System.out.println(dateFormat.format(date));
             String time=dateFormat.format(date); 
         
        // st1.executeUpdate("insert into downloads (filename,name,time)values('"+fname+"','"+name+"','"+time+"')");
         
          }
    }catch(Exception e){
    e.printStackTrace();
    }
%>