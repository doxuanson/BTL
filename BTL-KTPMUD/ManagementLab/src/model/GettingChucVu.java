package model;

import connect.*;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class GettingChucVu {

	public ArrayList<ChucVu> getListChucVu() throws SQLException, ClassNotFoundException {
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT * FROM CHUCVU";
		PreparedStatement ps = connection.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<ChucVu> list = new ArrayList<>();

		while (rs.next()) {
			ChucVu chucvu = new ChucVu();

			chucvu.setMaCV(rs.getString(1));
			chucvu.setTenCV(rs.getString(2));
			chucvu.setMoTa(rs.getString(3));

			list.add(chucvu);
		}

		return list;
	}

	public static void main(String[] args) throws SQLException, ClassNotFoundException {
		GettingChucVu gettingchucvu = new GettingChucVu();
		for (ChucVu ds : gettingchucvu.getListChucVu()) {
			System.out.print(ds.getMaCV());
			System.out.print(ds.getTenCV());
			System.out.println(ds.getMoTa());

		}
	}

}
