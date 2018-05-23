package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import connect.DBConnect;

public class GettingSuDung_CSVC {

	public ArrayList<SuDung_CSVC> getListSuDung_CSVC() throws SQLException, ClassNotFoundException {
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT * FROM SUDUNG_CSVC";
		PreparedStatement ps = connection.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<SuDung_CSVC> list = new ArrayList<>();

		while (rs.next()) {
			SuDung_CSVC sudung_csvc = new SuDung_CSVC();

			sudung_csvc.setMaTB(rs.getString(1));
			sudung_csvc.setMaTV(rs.getString(2));
			sudung_csvc.setNgayNhan(rs.getDate(3));
			sudung_csvc.setNgayTra(rs.getDate(4));

			list.add(sudung_csvc);
		}

		return list;
	}

	public static void main(String[] args) throws SQLException, ClassNotFoundException {
		GettingSuDung_CSVC gettingsudung_csvc = new GettingSuDung_CSVC();
		for (SuDung_CSVC sudung_csvc : gettingsudung_csvc.getListSuDung_CSVC()) {
			System.out.print(sudung_csvc.getMaTB() + " ");
			System.out.print(sudung_csvc.getMaTV() + " ");
			System.out.println(sudung_csvc.getNgayNhan() + " ");

		}

	}

}
