/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Config.DbKoneksi;
import Servlet.SignUp;
import Servlet.useredit;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Indri
 */
public class MainController {
    public ResultSet get(Connection con, String sql) throws SQLException {
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery(sql);
        return rs;
    }    

    boolean preparedStatement(Map<Integer, Object> map, String sql) {
        try{
            DbKoneksi dcon = new DbKoneksi();
            Connection con = dcon.open();
            PreparedStatement ps = con.prepareStatement(sql);
           
                for(Map.Entry<Integer, Object> entry : map.entrySet())
                {
                    ps.setString(entry.getKey(), entry.getValue().toString());
                }  
                int rows = ps.executeUpdate();
                System.out.println("Data berhasil tersimpan.");
                con.close();
                return rows != 0;
        }
        catch(Exception e){
            Logger.getLogger(SignUp.class.getName()).log(Level.SEVERE, null, e);        
            return false;
        }
    }
    
    public boolean updateStatement(Map<Integer, Object> map, String sql){
        try{
            DbKoneksi dcon = new DbKoneksi();
            Connection con = dcon.open();
            PreparedStatement ps = con.prepareStatement(sql);
           
                for(Map.Entry<Integer, Object> entry : map.entrySet())
                {
                    ps.setString(entry.getKey(), entry.getValue().toString());
                }  
                int rows = ps.executeUpdate();
                System.out.println("Data berhasil diubah.");
                con.close();
                return rows != 0;
        }
        catch(Exception e){
            Logger.getLogger(useredit.class.getName()).log(Level.SEVERE, null, e);        
            return false;
        }
    }    
    
    public ResultSet show(Connection con, Map<Integer, Object> map, String sql){
        try{
            PreparedStatement ps= con.prepareStatement(sql);
            for(Map.Entry<Integer, Object> entry : map.entrySet()){
                ps.setString(entry.getKey(), entry.getValue().toString());
            }
            ResultSet rs = ps.executeQuery();
            System.out.println("Data berhasil tampil");
            return rs;
        }catch(Exception e){
            System.out.println(e.getMessage());
            return null;
        }
    }    
}
