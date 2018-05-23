package model;

import connect.*;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class GettingDuAn_TV {
	public ArrayList<DuAn_TV> getListDuAn_TV() throws SQLException, ClassNotFoundException {
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT * FROM DUAN_TV";
		PreparedStatement ps = connection.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<DuAn_TV> list = new ArrayList<>();

		while (rs.next()) {
			DuAn_TV duan_tv = new DuAn_TV();

			duan_tv.setMaDA(rs.getString(1));
			duan_tv.setMaTV(rs.getString(2));

			list.add(duan_tv);
		}

		return list;
	}

	public ArrayList<DuAn_TV> getListTV(String mada) throws SQLException, ClassNotFoundException {
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT * FROM DUAN_TV JOIN THANHVIEN ON DUAN_TV.MATV=THANHVIEN.MATV WHERE MADA='" + mada
				+ "'AND NOT MACV='CV0'";
		PreparedStatement ps = connection.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<DuAn_TV> list = new ArrayList<>();

		while (rs.next()) {
			DuAn_TV duan_tv = new DuAn_TV();

			duan_tv.setMaDA(rs.getString(1));
			duan_tv.setMaTV(rs.getString(2));

			list.add(duan_tv);
		}

		return list;
	}

	public ArrayList<DuAn_TV> getListGV(String mada) throws SQLException, ClassNotFoundException {
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT * FROM DUAN_TV JOIN THANHVIEN ON DUAN_TV.MATV=THANHVIEN.MATV WHERE MADA='" + mada
				+ "'AND MACV='CV0'";
		PreparedStatement ps = connection.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<DuAn_TV> list = new ArrayList<>();

		while (rs.next()) {
			DuAn_TV duan_tv = new DuAn_TV();

			duan_tv.setMaDA(rs.getString(1));
			duan_tv.setMaTV(rs.getString(2));

			list.add(duan_tv);
		}

		return list;
	}

	public String deleteDuAn_TV(String mada) throws SQLException, ClassNotFoundException {
		Connection connection = DBConnect.getConnection();
		String sql = "DELETE FROM DUAN_TV WHERE MADA = '" + mada + "'";
		PreparedStatement ps = connection.prepareStatement(sql);
		ps.executeUpdate(sql);

		return mada;

	}

	public static void main(String[] args) throws SQLException, ClassNotFoundException {
		GettingDuAn_TV gettingda_tv = new GettingDuAn_TV();
		for (DuAn_TV duan_tv : gettingda_tv.getListGV("DA1")) {
			System.out.print(duan_tv.getMaDA() + " ");
			System.out.println(duan_tv.getMaTV() + " ");

		}

	}
}
