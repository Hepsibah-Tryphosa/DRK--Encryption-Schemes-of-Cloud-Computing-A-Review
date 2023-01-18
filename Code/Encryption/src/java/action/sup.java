/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package action;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import utility.DBConnectionn;

/**
 *
 * @author sys7
 */
public class sup {
     static void upspace(long spt,int id,String name){
Connection co=null;
 co=DBConnectionn.getConnection();
 String sqlqru="update oreg set space='"+spt+"'where id='"+id+"'and name='"+name+"'";
 Statement st=null;
         try {
             st = co.createStatement();
                int i = st.executeUpdate(sqlqru);
if(i>0){
    System.out.println("update sucess");
}else{
System.out.println("update fail");
}
         } catch (SQLException ex) {
             Logger.getLogger(sup.class.getName()).log(Level.SEVERE, null, ex);
         }
     
}
}
