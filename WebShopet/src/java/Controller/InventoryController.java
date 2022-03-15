/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Config.DbKoneksi;
import Model.ModelInventory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author Indri
 */
public class InventoryController {    
        public ResultSet get(Connection con){
        try{

            MainController mc = new MainController();
            String sql = "SELECT * FROM tbbarang";
            return mc.get(con, sql);

        }catch(Exception e){

            System.out.println(e.getMessage());
            return null;

        }
    }
        
    public ResultSet cart(Connection con, ModelInventory modelInventory){
        try{
            String sql = "SELECT * FROM tbtransaksi WHERE iduser=?";
            Map<Integer, Object> map = new HashMap<>();
            map.put(1, modelInventory.getIduser());
            
            MainController mc = new MainController();
            return mc.show(con, map, sql);
        }catch(Exception e){
            System.out.println(e.getMessage());
            return null;
        }
    }
        
    public boolean create(ModelInventory model){
        try{
            String sql = "INSERT INTO tbuser (email, username, password)" + "VALUES (?,?,?)";
            Map<Integer, Object> map = new HashMap<>();
            map.put(1, model.getEmail());
            map.put(2, model.getUsername());
            map.put(3, model.getPassword());
            MainController mc = new MainController();
            boolean res = mc.preparedStatement(map, sql);
            return res;
        }
        catch(Exception e){
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    public boolean check(String username, String password){
        try{
            String sql = "SELECT * FROM tbuser WHERE username=? and password=?";
            DbKoneksi dbcon = new DbKoneksi();
            Connection con = dbcon.open();
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            
            if(rs.next()){
                return true;
            }
        }catch(Exception e){
            e.printStackTrace();
        }
            return false;
    }

    public boolean tambah(ModelInventory model) {
       try{
            String sql = "INSERT INTO tbtransaksi (idbarang, iduser)" + "VALUES (?,?)";
            Map<Integer, Object> map = new HashMap<>();
            map.put(1, model.getIdbarang());
            map.put(2, model.getIduser());
            MainController mc = new MainController();
            boolean res = mc.preparedStatement(map, sql);
            return res;
        }
        catch(Exception e){
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    public ResultSet show(Connection con, ModelInventory modelInventory){
        try{
            String sql = "SELECT * FROM tbbarang JOIN tbtransaksi WHERE id=idbarang AND iduser=?";
            Map<Integer, Object> map = new HashMap<>();
            map.put(1, modelInventory.getIduser());
            
            MainController mc = new MainController();
            return mc.show(con, map, sql);
        }catch(Exception e){
            System.out.println(e.getMessage());
            return null;
        }
    }
    public boolean update(ModelInventory modelInventory){
        try{
            String sql = "UPDATE tbuser SET username=?, password=? WHERE iduser=?";         
            
            Map<Integer, Object> map = new HashMap<>();
            map.put(1, modelInventory.getUsername());
            map.put(2, modelInventory.getPassword());
            
            map.put(3, modelInventory.getIduser());
            map.put(4, modelInventory.getEmail());
            
            MainController mc = new MainController();
            
            boolean res = mc.updateStatement(map, sql);
            return res;
            
        }catch(Exception e){
            System.out.println(e.getMessage());
            return false;
        }
    }
    public ResultSet editakun(Connection con, ModelInventory modelInventory){
        try{
            String sql = "SELECT * FROM tbuser WHERE iduser=?";
            Map<Integer, Object> map = new HashMap<>();
            map.put(1, modelInventory.getIduser());
            
            MainController mc = new MainController();
            return mc.show(con, map, sql);
        }catch(Exception e){
            System.out.println(e.getMessage());
            return null;
        }
    }    

    public boolean delete(ModelInventory modelInventory){
        try{
            String sql = "DELETE FROM `tbtransaksi` WHERE `tbtransaksi`.`idbarang` =?";
            Map<Integer, Object> map = new HashMap<Integer, Object>();
            map.put(1, modelInventory.getIdbarang());

            MainController mc = new MainController();
            boolean res = mc.preparedStatement(map, sql);
            return res;
        }
        catch(Exception e)
        {
            System.err.println(e.getMessage());
            return false;
        }
    }    
}
