package model;

import connect.*;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class GettingDuAn {

	public ArrayList<DuAn> getListDuAn() throws SQLException, ClassNotFoundException {
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT * FROM DUAN";
		PreparedStatement ps = connection.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<DuAn> list = new ArrayList<>();

		while (rs.next()) {
			DuAn duan = new DuAn();

			duan.setMaDA(rs.getString(1));
			duan.setTenDA(rs.getString(2));
			duan.setDoiTac(rs.getString(3));
			duan.setNgayBatDau(rs.getDate(4));
			duan.setNgayKetThuc(rs.getDate(5));
			duan.setMoTa(rs.getString(6));
			duan.setTrangThaiDA(rs.getString(7));

			list.add(duan);
		}

		return list;
	}

	public DuAn getDuAn(String mada) throws SQLException, ClassNotFoundException {
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT * FROM DUAN WHERE MADA='" + mada + "'";
		PreparedStatement ps = connection.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		DuAn duan = new DuAn();

		while (rs.next()) {

			duan.setMaDA(rs.getString(1));
			duan.setTenDA(rs.getString(2));
			duan.setDoiTac(rs.getString(3));
			duan.setNgayBatDau(rs.getDate(4));
			duan.setNgayKetThuc(rs.getDate(5));
			duan.setMoTa(rs.getString(6));
			duan.setTrangThaiDA(rs.getString(7));

		}

		return duan;
	}

	public int deleteDuAn(String mada) throws SQLException, ClassNotFoundException {
		Connection connection = DBConnect.getConnection();
		String sql = "DELETE FROM DUAN WHERE MADA = '" + mada + "'";
		PreparedStatement ps = connection.prepareStatement(sql);
		int result = ps.executeUpdate(sql);

		return result;
	}

	public static void main(String[] args) throws SQLException, ClassNotFoundException {
		GettingDuAn gettingda = new GettingDuAn();
		for (DuAn bv : gettingda.getListDuAn()) {
			System.out.print(bv.getMaDA() + " ");
			System.out.print(bv.getTenDA() + " ");
			System.out.println(bv.getDoiTac() + " ");

		}

	}

}
