package dao;

import context.DbContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Loai;

public class LoaiDAO {

    public ArrayList<Loai> getAll() {
        ArrayList<Loai> ds = new ArrayList<>();
        String sql = "select * from Loai";
        
        try (Connection conn = DbContext.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                ds.add(new Loai(rs.getInt(1), rs.getString(2)));
            }
        } catch (Exception ex) {
            System.out.println("Lỗi: " + ex.toString());
            ex.printStackTrace();
        }
        return ds;
    }

    public static void main(String[] args) {
        LoaiDAO loaiDAO = new LoaiDAO();
        ArrayList<Loai> dsLoai = loaiDAO.getAll();  
        for (Loai l : dsLoai) {
            System.out.println(l);
        }
    }
}
