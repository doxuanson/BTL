package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import connect.DBConnect;

public class GettingTrangThai {
	public ArrayList<TrangThai> getListTrangThai() throws SQLException, ClassNotFoundException {
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT * FROM TRANGTHAI";
		PreparedStatement ps = connection.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<TrangThai> list = new ArrayList<>();

		while (rs.next()) {
			TrangThai trangthai = new TrangThai();

			trangthai.setMaTT(rs.getString(1));
			trangthai.setMoTa(rs.getString(2));

			list.add(trangthai);
		}

		return list;
	}

	public TrangThai getTrangThai(String matt) throws SQLException, ClassNotFoundException {
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT * FROM TRANGTHAI WHERE MATT='" + matt + "'";
		PreparedStatement ps = connection.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		TrangThai trangthai = new TrangThai();

		while (rs.next()) {

			trangthai.setMaTT(rs.getString(1));
			trangthai.setMoTa(rs.getString(2));

		}

		return trangthai;
	}

	public static void main(String[] args) throws SQLException, ClassNotFoundException {
		GettingTrangThai gettingtrangthai = new GettingTrangThai();
		for (TrangThai trangthai : gettingtrangthai.getListTrangThai()) {
			System.out.print(trangthai.getMaTT() + " ");
			System.out.println(trangthai.getMoTa() + " ");

		}

	}

}
