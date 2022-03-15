/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Config;

import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;

/**
 *
 * @author Dhiwa
 */
public class DbKoneksi {
    Connection con;
    
    public static Connection open() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection koneksi = DriverManager.getConnection("jdbc:mysql://localhost/anjayshopet", "root", "");
            System.out.println("koneksi berhasil;");
            return koneksi;
            
        } 
        catch(Exception e) {
            JOptionPane.showMessageDialog(null, e);
            
            return null;
        }
    }
}
