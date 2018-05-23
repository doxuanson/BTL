package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import connect.DBConnect;

public class GettingNhom {
	public ArrayList<Nhom> getListNhom() throws SQLException, ClassNotFoundException {
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT * FROM NHOM";
		PreparedStatement ps = connection.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<Nhom> list = new ArrayList<>();

		while (rs.next()) {
			Nhom nhom = new Nhom();

			nhom.setMaNhom(rs.getString(1));
			nhom.setTenNhom(rs.getString(2));
			nhom.setHuong_NC(rs.getString(3));
			nhom.setMaNT(rs.getString(4));

			list.add(nhom);
		}

		return list;
	}

	public static void main(String[] args) throws SQLException, ClassNotFoundException {
		GettingNhom gettingnhom = new GettingNhom();
		for (Nhom nhom : gettingnhom.getListNhom()) {
			System.out.print(nhom.getMaNhom() + " ");
			System.out.print(nhom.getTenNhom() + " ");
			System.out.println(nhom.getHuong_NC() + " ");
		}

	}

}
