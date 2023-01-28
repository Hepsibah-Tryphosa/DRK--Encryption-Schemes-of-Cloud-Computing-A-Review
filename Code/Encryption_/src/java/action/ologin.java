/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package action;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import utility.DBConnectionn;

/**
 *
 * @author sys7
 */
public class ologin extends HttpServlet {

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String oemail=request.getParameter("oemail");
        String opassword=request.getParameter("opassword");
        String role=request.getParameter("role");
        System.out.println(oemail+opassword+role);
        
        try {
if(role.equalsIgnoreCase("owner")){    
            Connection con= DBConnectionn.getConnection();
          Statement st=con.createStatement();
          ResultSet rt=st.executeQuery("select * from oreg where email='"+oemail+"'");
        if(rt.next()){
              String p=rt.getString("pswd");
              int id=rt.getInt("id");
              String status=rt.getString("status");
      
              String name=rt.getString("name");
              if(opassword.equalsIgnoreCase(p)){
                  if(status.equalsIgnoreCase("yes")){
                      HttpSession user=request.getSession();
                      user.setAttribute("id",id);
                      int sessionid=(int)user.getAttribute("id");
                      System.out.println(sessionid+"session id");    
                      user.setAttribute("name", name); 
                      user.setAttribute("status", status);
                      response.sendRedirect("ohome.jsp?msg=sucess");
                  } else{
                      response.sendRedirect("ologin.jsp?msg=waiting");
                  } 
              }else{
                  response.sendRedirect("ologin.jsp?msg=wrongpassword");
              }
          }
          else{
              response.sendRedirect("ologin.jsp?msg=failed");          }
}else if(role.equalsIgnoreCase("user")){     
    Connection con= DBConnectionn.getConnection();
          Statement st=con.createStatement();
          ResultSet rt=st.executeQuery("select * from ureg  where email='"+oemail+"'");
        if(rt.next()){
              String p=rt.getString("pswd");
              int id=rt.getInt("id");
              String status=rt.getString("status");
      
              String name=rt.getString("name");
              if(opassword.equalsIgnoreCase(p)){
                  if(status.equalsIgnoreCase("yes")){
                      HttpSession user=request.getSession();
                      user.setAttribute("id",id);
                      int sessionid=(int)user.getAttribute("id");
                      System.out.println(sessionid+"session id"); 
                      user.setAttribute("oemail", oemail);
                      user.setAttribute("name", name); 
                      user.setAttribute("status", status);
                      response.sendRedirect("uhome.jsp?msg=sucess");
                  } else{
                      response.sendRedirect("ulogin.jsp?msg=waiting");
                  } 
              }else{
                  response.sendRedirect("ulogin.jsp?msg=wrongpassword");
              }
          }
          else{
              response.sendRedirect("ulogin.jsp?msg=failed");          }}else{}
        
        }catch(Exception e){
                  e.printStackTrace();
              }
    }}

    

