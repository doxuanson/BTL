package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import connect.DBConnect;

public class GettingTheLoai_TB {

	public ArrayList<TheLoai_TB> getListTheLoai_TB() throws SQLException, ClassNotFoundException {
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT * FROM THELOAI_TB";
		PreparedStatement ps = connection.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<TheLoai_TB> list = new ArrayList<>();

		while (rs.next()) {
			TheLoai_TB theloai_tb = new TheLoai_TB();

			theloai_tb.setMaTheLoai(rs.getString(1));
			theloai_tb.setTenTheLoai(rs.getString(2));
			theloai_tb.setMoTa(rs.getString(3));

			list.add(theloai_tb);
		}

		return list;
	}

	public static void main(String[] args) throws SQLException, ClassNotFoundException {
		GettingTheLoai_TB gettingtheloai_tb = new GettingTheLoai_TB();
		for (TheLoai_TB theloai_tb : gettingtheloai_tb.getListTheLoai_TB()) {
			System.out.print(theloai_tb.getMaTheLoai() + " ");
			System.out.println(theloai_tb.getTenTheLoai() + " ");

		}

	}

}
