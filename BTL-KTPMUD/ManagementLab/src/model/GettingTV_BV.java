package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import connect.DBConnect;

public class GettingTV_BV {
	public ArrayList<TV_BV> getListTV_BV() throws SQLException, ClassNotFoundException {
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT * FROM TV_BV";
		PreparedStatement ps = connection.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<TV_BV> list = new ArrayList<>();

		while (rs.next()) {
			TV_BV tv_bv = new TV_BV();

			tv_bv.setMaBV(rs.getString(1));
			tv_bv.setMaTV(rs.getString(2));

			list.add(tv_bv);
		}

		return list;
	}

	public ArrayList<TV_BV> getListTV_BV(String mabv) throws SQLException, ClassNotFoundException {
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT * FROM TV_BV WHERE MABV='" + mabv + "'";
		PreparedStatement ps = connection.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<TV_BV> list = new ArrayList<>();

		while (rs.next()) {
			TV_BV tv_bv = new TV_BV();

			tv_bv.setMaBV(rs.getString(1));
			tv_bv.setMaTV(rs.getString(2));

			list.add(tv_bv);
		}

		return list;
	}

	public void insert(String mabv, String matv) throws SQLException, ClassNotFoundException {
		Connection connection = DBConnect.getConnection();
		String sql = "INSERT INTO TV_BV (MABV, MATV) VALUES ('" + mabv + "', '" + matv + "')";
		PreparedStatement ps = connection.prepareStatement(sql);
		ps.executeUpdate();

	}

	public String deleteTV_BV(String mabv) throws SQLException, ClassNotFoundException {
		Connection connection = DBConnect.getConnection();
		String sql = "DELETE FROM TV_BV WHERE MABV = '" + mabv + "'";
		PreparedStatement ps = connection.prepareStatement(sql);
		ps.executeUpdate(sql);

		return mabv;

	}

	public static void main(String[] args) throws SQLException, ClassNotFoundException {
		GettingTV_BV gettingtv_bv = new GettingTV_BV();
		for (TV_BV tv_bv : gettingtv_bv.getListTV_BV("BV0001")) {
			System.out.print(tv_bv.getMaBV() + " ");
			System.out.println(tv_bv.getMaTV() + " ");

		}

	}

}
