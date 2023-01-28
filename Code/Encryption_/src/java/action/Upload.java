/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package action;

import FileReador.ContentExtractor;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import utility.Algorithem;
import utility.DBConnectionn;

/**
 *
 * @author sys7
 */
 @MultipartConfig(maxFileSize = 16177215)
public class Upload extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String id = request.getParameter("id");
        int ide=Integer.parseInt(id);
        String name1 = request.getParameter("name");
        InputStream inputStream = null;
        Part filePart = request.getPart("ofile");
        String fname=filePart.getSubmittedFileName();
        inputStream=filePart.getInputStream();           
        long size=filePart.getSize();
        System.out.println("filesize="+size);
        String space=request.getParameter("space");
        long spc=Long.parseLong(space);
        String skey=request.getParameter("skey");
        String str = ContentExtractor.getStringFromInputStream(filePart.getInputStream());
Connection con = null;
PreparedStatement ps = null;
ResultSet rs1=null;
        try {
            if(spc>size){
                  String encstr=new Algorithem().encrypt(str);
    con=DBConnectionn.getConnection();
    ps=con.prepareStatement("insert into upload(oid,oname,fname,ofile,enfile,skey,ospace,fspace)values(?,?,?,?,?,?,?,?)");
ps.setInt(1, ide);
ps.setString(2, name1);
ps.setString(3, fname);
ps.setBinaryStream(4, inputStream);
ps.setString(5,encstr);
ps.setString(6, skey);
ps.setLong(7,spc);
ps.setLong(8, size);       
int i=0;
i=ps.executeUpdate();
if(i>0){
    long upspace=spc-size;
    sup.upspace(upspace, ide, name1);
response.sendRedirect("FileUplload.jsp?msg=FileStoredSucessfully");
}else{
response.sendRedirect("FileUplload.jsp?msg=FileStoredfailure");
}
            }else{
            response.sendRedirect("FileUplload.jsp?msg=lessSpace");
            }
            
        }catch(Exception e){
        e.printStackTrace();
        }
        
    }

  

}
