package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import connect.DBConnect;

public class GettingVien {
	public ArrayList<Vien> getListVien() throws SQLException, ClassNotFoundException {
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT * FROM VIEN";
		PreparedStatement ps = connection.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<Vien> list = new ArrayList<>();

		while (rs.next()) {
			Vien vien = new Vien();

			vien.setMaVien(rs.getString(1));
			vien.setTenVien(rs.getString(2));
			vien.setDiaChi(rs.getString(3));
			vien.setSoDT(rs.getString(4));
			vien.setEmail(rs.getString(5));
			vien.setWebsite(rs.getString(6));

			list.add(vien);
		}

		return list;
	}

	public static void main(String[] args) throws SQLException, ClassNotFoundException {
		GettingVien gettingvien = new GettingVien();
		for (Vien vien : gettingvien.getListVien()) {
			System.out.print(vien.getMaVien() + " ");
			System.out.println(vien.getTenVien() + " ");

		}

	}

}
