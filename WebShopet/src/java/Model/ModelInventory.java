/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Dhiwa
 */
public class ModelInventory {
    private String id;
    private String nama;
    private String kategori;
    private String harga;
    private String stok;
    
    private String iduser;
    private String email;
    private String username;
    private String password;
    
    private String idbarang;

    public void setIdbarang(String idbarang) {
        this.idbarang = idbarang;
    }

    public String getIdbarang() {
        return idbarang;
    }

    public void setIduser(String iduser) {
        this.iduser = iduser;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }   

    public String getIduser() {
        return iduser;
    }

    public String getEmail() {
        return email;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }
    

    public void setId(String id) {
        this.id = id;
    }

    public void setNama(String nama) {
        this.nama = nama;
    }

    public void setKategori(String kategori) {
        this.kategori = kategori;
    }

    public void setHarga(String harga) {
        this.harga = harga;
    }

    public void setStok(String stok) {
        this.stok = stok;
    }

    public String getId() {
        return id;
    }

    public String getNama() {
        return nama;
    }

    public String getKategori() {
        return kategori;
    }

    public String getHarga() {
        return harga;
    }

    public String getStok() {
        return stok;
    }
    
}
