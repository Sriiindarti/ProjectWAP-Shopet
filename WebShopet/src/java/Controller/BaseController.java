/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Config.DbKoneksi;
import com.sun.rowset.CachedRowSetImpl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;

/**
 *
 * @author Dhiwa
 */
public class BaseController {
    public ResultSet getWithParameter(Map<Integer, Object> map, String sql){
        try {
            DbKoneksi dbcon = new DbKoneksi();
            Connection con = dbcon.open();
            PreparedStatement ps = con.prepareStatement(sql);
            
            for(Map.Entry<Integer, Object> entry : map.entrySet()){
                ps.setString(entry.getKey(), entry.getValue().toString());
            }
            
            ResultSet rs = ps.executeQuery();
            
            CachedRowSetImpl crs = new CachedRowSetImpl();
            crs.populate(rs);
            
            con.close();
            
            return crs;
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
        
    }
}
