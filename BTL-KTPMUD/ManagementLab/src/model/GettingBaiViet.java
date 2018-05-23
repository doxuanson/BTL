package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import connect.DBConnect;

public class GettingBaiViet {

	public ArrayList<BaiViet> getListBaiViet() throws SQLException, ClassNotFoundException {
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT * FROM BAIVIET";
		PreparedStatement ps = connection.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<BaiViet> list = new ArrayList<>();

		while (rs.next()) {
			BaiViet baiviet = new BaiViet();

			baiviet.setMaBV(rs.getString(1));
			baiviet.setTieuDe(rs.getString(2));
			baiviet.setNoiDung(rs.getString(3));
			baiviet.setNgayDang(rs.getDate(4));
			baiviet.setNgaySua(rs.getDate(5));
			baiviet.setSoLuotXem(rs.getInt(6));

			list.add(baiviet);
		}

		return list;
	}

	public BaiViet getBaiViet(String mabv) throws SQLException, ClassNotFoundException {
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT * FROM BAIVIET WHERE MABV='" + mabv + "'";
		PreparedStatement ps = connection.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		BaiViet baiviet = new BaiViet();
		while (rs.next()) {

			baiviet.setMaBV(rs.getString(1));
			baiviet.setTieuDe(rs.getString(2));
			baiviet.setNoiDung(rs.getString(3));
			baiviet.setNgayDang(rs.getDate(4));
			baiviet.setNgaySua(rs.getDate(5));
			baiviet.setSoLuotXem(rs.getInt(6));
		}
		return baiviet;
	}

	public String addNewPost(String tieude, String noidung, String ngaydang)
			throws SQLException, ClassNotFoundException {
		Connection connection = DBConnect.getConnection();
		String sql1 = "";
		String sql2 = "SELECT * FROM BAIVIET";
		PreparedStatement ps = connection.prepareStatement(sql2);
		ResultSet rs = ps.executeQuery();
		rs.last();
		int mabv = rs.getRow();

		sql1 = "INSERT INTO BAIVIET (MABV, TIEUDE, NOIDUNG, NGAYDANG) VALUES ('" + mabv + "','" + tieude + "', '"
				+ noidung + "', '" + ngaydang + "')";

		ps = connection.prepareStatement(sql1);
		ps.executeUpdate(sql1);

		return Integer.toString(mabv);

	}

	public String deletePost(String mabv) throws SQLException, ClassNotFoundException {
		Connection connection = DBConnect.getConnection();
		String sql = "DELETE FROM BAIVIET WHERE MABV = '" + mabv + "'";
		PreparedStatement ps = connection.prepareStatement(sql);
		ps.executeUpdate(sql);

		return mabv;

	}

	public String editPost(String mabv, String tieude, String noidung, String ngaysua)
			throws SQLException, ClassNotFoundException {
		Connection connection = DBConnect.getConnection();
		String sql = "UPDATE BAIVIET SET TIEUDE = '" + tieude + "', NOIDUNG = '" + noidung + "', NGAYSUA = '" + ngaysua
				+ "' WHERE MABV = '" + mabv + "'";
		PreparedStatement ps = connection.prepareStatement(sql);
		ps.executeUpdate(sql);

		return mabv;

	}

	public static void main(String[] args) throws SQLException, ClassNotFoundException {
		GettingBaiViet gettingbaiviet = new GettingBaiViet();

	}

}
