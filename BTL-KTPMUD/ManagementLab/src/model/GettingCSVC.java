package model;

import connect.*;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class GettingCSVC {

	public ArrayList<CSVC> getListCSVC() throws SQLException, ClassNotFoundException {
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT * FROM CSVC";
		PreparedStatement ps = connection.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<CSVC> list = new ArrayList<>();

		while (rs.next()) {
			CSVC csvc = new CSVC();

			csvc.setMaTB(rs.getString(1));
			csvc.setTenTB(rs.getString(2));
			csvc.setHangSX(rs.getString(3));
			csvc.setThongTinTB(rs.getString(4));
			csvc.setNgayNhap(rs.getDate(5));
			csvc.setTinhTrangTB(rs.getString(6));
			csvc.setMaTheLoai(rs.getString(7));
			csvc.setMaTV(rs.getString(8));

			list.add(csvc);
		}

		return list;
	}

	public static void main(String[] args) throws SQLException, ClassNotFoundException {
		GettingCSVC gettingcsvc = new GettingCSVC();
		for (CSVC ds : gettingcsvc.getListCSVC()) {
			System.out.print(ds.getMaTB());
			System.out.print(ds.getTenTB());
			System.out.println(ds.getHangSX());

		}
	}

}
