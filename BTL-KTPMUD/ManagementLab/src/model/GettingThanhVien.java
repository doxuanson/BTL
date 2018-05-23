package model;

import connect.*;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class GettingThanhVien {

	public ArrayList<ThanhVien> getListThanhVien() throws SQLException, ClassNotFoundException {
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT * FROM THANHVIEN ";
		PreparedStatement ps = connection.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<ThanhVien> list = new ArrayList<>();

		while (rs.next()) {
			ThanhVien thanhvien = new ThanhVien();

			thanhvien.setMaTV(rs.getString(1));
			thanhvien.setTenDN(rs.getString(2));
			thanhvien.setMK(rs.getString(3));
			thanhvien.setHoTen(rs.getString(4));
			thanhvien.setEmail(rs.getString(5));
			thanhvien.setNgaySinh(rs.getDate(6));
			thanhvien.setLop(rs.getString(7));
			thanhvien.setKhoa(rs.getString(8));
			thanhvien.setQue(rs.getString(9));
			thanhvien.setSoDT(rs.getString(10));
			thanhvien.setNgayVaoLab(rs.getDate(11));
			thanhvien.setNgayRoiLab(rs.getDate(12));
			thanhvien.setAvatar(rs.getString(13));
			thanhvien.setMaVien(rs.getString(14));
			thanhvien.setMaCV(rs.getString(15));
			thanhvien.setMaTT(rs.getString(16));
			thanhvien.setMaNhom(rs.getString(17));

			list.add(thanhvien);
		}

		return list;
	}

	public ArrayList<ThanhVien> getListCurrentThanhVien() throws SQLException, ClassNotFoundException {
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT * FROM THANHVIEN WHERE MATT='TT1' AND NOT MACV='CV0'";
		PreparedStatement ps = connection.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<ThanhVien> list = new ArrayList<>();

		while (rs.next()) {
			ThanhVien thanhvien = new ThanhVien();

			thanhvien.setMaTV(rs.getString(1));
			thanhvien.setTenDN(rs.getString(2));
			thanhvien.setMK(rs.getString(3));
			thanhvien.setHoTen(rs.getString(4));
			thanhvien.setEmail(rs.getString(5));
			thanhvien.setNgaySinh(rs.getDate(6));
			thanhvien.setLop(rs.getString(7));
			thanhvien.setKhoa(rs.getString(8));
			thanhvien.setQue(rs.getString(9));
			thanhvien.setSoDT(rs.getString(10));
			thanhvien.setNgayVaoLab(rs.getDate(11));
			thanhvien.setNgayRoiLab(rs.getDate(12));
			thanhvien.setAvatar(rs.getString(13));
			thanhvien.setMaVien(rs.getString(14));
			thanhvien.setMaCV(rs.getString(15));
			thanhvien.setMaTT(rs.getString(16));
			thanhvien.setMaNhom(rs.getString(17));

			list.add(thanhvien);
		}

		return list;
	}

	public ArrayList<ThanhVien> getListOldThanhVien() throws SQLException, ClassNotFoundException {
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT * FROM THANHVIEN WHERE MATT='TT2' AND NOT MACV='CV0'";
		PreparedStatement ps = connection.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<ThanhVien> list = new ArrayList<>();

		while (rs.next()) {
			ThanhVien thanhvien = new ThanhVien();

			thanhvien.setMaTV(rs.getString(1));
			thanhvien.setTenDN(rs.getString(2));
			thanhvien.setMK(rs.getString(3));
			thanhvien.setHoTen(rs.getString(4));
			thanhvien.setEmail(rs.getString(5));
			thanhvien.setNgaySinh(rs.getDate(6));
			thanhvien.setLop(rs.getString(7));
			thanhvien.setKhoa(rs.getString(8));
			thanhvien.setQue(rs.getString(9));
			thanhvien.setSoDT(rs.getString(10));
			thanhvien.setNgayVaoLab(rs.getDate(11));
			thanhvien.setNgayRoiLab(rs.getDate(12));
			thanhvien.setAvatar(rs.getString(13));
			thanhvien.setMaVien(rs.getString(14));
			thanhvien.setMaCV(rs.getString(15));
			thanhvien.setMaTT(rs.getString(16));
			thanhvien.setMaNhom(rs.getString(17));

			list.add(thanhvien);
		}

		return list;
	}

	public ThanhVien getThanhVien(String matv) throws SQLException, ClassNotFoundException {
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT * FROM THANHVIEN WHERE MATV='" + matv + "'";
		PreparedStatement ps = connection.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		ThanhVien thanhvien = new ThanhVien();

		while (rs.next()) {

			thanhvien.setMaTV(rs.getString(1));
			thanhvien.setTenDN(rs.getString(2));
			thanhvien.setMK(rs.getString(3));
			thanhvien.setHoTen(rs.getString(4));
			thanhvien.setEmail(rs.getString(5));
			thanhvien.setNgaySinh(rs.getDate(6));
			thanhvien.setLop(rs.getString(7));
			thanhvien.setKhoa(rs.getString(8));
			thanhvien.setQue(rs.getString(9));
			thanhvien.setSoDT(rs.getString(10));
			thanhvien.setNgayVaoLab(rs.getDate(11));
			thanhvien.setNgayRoiLab(rs.getDate(12));
			thanhvien.setAvatar(rs.getString(13));
			thanhvien.setMaVien(rs.getString(14));
			thanhvien.setMaCV(rs.getString(15));
			thanhvien.setMaTT(rs.getString(16));
			thanhvien.setMaNhom(rs.getString(17));
		}
		return thanhvien;
	}

	public ArrayList<ThanhVien> getListGiangVien() throws SQLException, ClassNotFoundException {
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT * FROM THANHVIEN WHERE MACV='CV0' ";
		PreparedStatement ps = connection.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<ThanhVien> list = new ArrayList<>();

		while (rs.next()) {
			ThanhVien thanhvien = new ThanhVien();

			thanhvien.setMaTV(rs.getString(1));
			thanhvien.setTenDN(rs.getString(2));
			thanhvien.setMK(rs.getString(3));
			thanhvien.setHoTen(rs.getString(4));
			thanhvien.setEmail(rs.getString(5));
			thanhvien.setNgaySinh(rs.getDate(6));
			thanhvien.setLop(rs.getString(7));
			thanhvien.setKhoa(rs.getString(8));
			thanhvien.setQue(rs.getString(9));
			thanhvien.setSoDT(rs.getString(10));
			thanhvien.setNgayVaoLab(rs.getDate(11));
			thanhvien.setNgayRoiLab(rs.getDate(12));
			thanhvien.setAvatar(rs.getString(13));
			thanhvien.setMaVien(rs.getString(14));
			thanhvien.setMaCV(rs.getString(15));
			thanhvien.setMaTT(rs.getString(16));
			thanhvien.setMaNhom(rs.getString(17));

			list.add(thanhvien);
		}

		return list;
	}

	public ArrayList<ThanhVien> getList5GThanhVien() throws SQLException, ClassNotFoundException {
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT * FROM THANHVIEN WHERE MANHOM='5G' AND MATT='TT1' AND NOT MACV='CV2' ORDER BY HOTEN";
		PreparedStatement ps = connection.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<ThanhVien> list = new ArrayList<>();

		while (rs.next()) {
			ThanhVien thanhvien = new ThanhVien();
			thanhvien.setMaTV(rs.getString(1));
			thanhvien.setTenDN(rs.getString(2));
			thanhvien.setMK(rs.getString(3));
			thanhvien.setHoTen(rs.getString(4));
			thanhvien.setEmail(rs.getString(5));
			thanhvien.setNgaySinh(rs.getDate(6));
			thanhvien.setLop(rs.getString(7));
			thanhvien.setKhoa(rs.getString(8));
			thanhvien.setQue(rs.getString(9));
			thanhvien.setSoDT(rs.getString(10));
			thanhvien.setNgayVaoLab(rs.getDate(11));
			thanhvien.setNgayRoiLab(rs.getDate(12));
			thanhvien.setAvatar(rs.getString(13));
			thanhvien.setMaVien(rs.getString(14));
			thanhvien.setMaCV(rs.getString(15));
			thanhvien.setMaTT(rs.getString(16));
			thanhvien.setMaNhom(rs.getString(17));

			list.add(thanhvien);
		}

		return list;
	}

	public ArrayList<ThanhVien> getList5GLeader() throws SQLException, ClassNotFoundException {
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT * FROM THANHVIEN WHERE MANHOM='5G' AND MATT='TT1' AND MACV='CV2' ORDER BY HOTEN";
		PreparedStatement ps = connection.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<ThanhVien> list = new ArrayList<>();

		while (rs.next()) {
			ThanhVien thanhvien = new ThanhVien();
			thanhvien.setMaTV(rs.getString(1));
			thanhvien.setTenDN(rs.getString(2));
			thanhvien.setMK(rs.getString(3));
			thanhvien.setHoTen(rs.getString(4));
			thanhvien.setEmail(rs.getString(5));
			thanhvien.setNgaySinh(rs.getDate(6));
			thanhvien.setLop(rs.getString(7));
			thanhvien.setKhoa(rs.getString(8));
			thanhvien.setQue(rs.getString(9));
			thanhvien.setSoDT(rs.getString(10));
			thanhvien.setNgayVaoLab(rs.getDate(11));
			thanhvien.setNgayRoiLab(rs.getDate(12));
			thanhvien.setAvatar(rs.getString(13));
			thanhvien.setMaVien(rs.getString(14));
			thanhvien.setMaCV(rs.getString(15));
			thanhvien.setMaTT(rs.getString(16));
			thanhvien.setMaNhom(rs.getString(17));

			list.add(thanhvien);
		}

		return list;
	}

	public ArrayList<ThanhVien> getListIoTThanhVien() throws SQLException, ClassNotFoundException {
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT * FROM THANHVIEN WHERE MANHOM='IoT' AND MATT='TT1' AND NOT MACV='CV2' ORDER BY HOTEN";
		PreparedStatement ps = connection.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<ThanhVien> list = new ArrayList<>();

		while (rs.next()) {
			ThanhVien thanhvien = new ThanhVien();
			thanhvien.setMaTV(rs.getString(1));
			thanhvien.setTenDN(rs.getString(2));
			thanhvien.setMK(rs.getString(3));
			thanhvien.setHoTen(rs.getString(4));
			thanhvien.setEmail(rs.getString(5));
			thanhvien.setNgaySinh(rs.getDate(6));
			thanhvien.setLop(rs.getString(7));
			thanhvien.setKhoa(rs.getString(8));
			thanhvien.setQue(rs.getString(9));
			thanhvien.setSoDT(rs.getString(10));
			thanhvien.setNgayVaoLab(rs.getDate(11));
			thanhvien.setNgayRoiLab(rs.getDate(12));
			thanhvien.setAvatar(rs.getString(13));
			thanhvien.setMaVien(rs.getString(14));
			thanhvien.setMaCV(rs.getString(15));
			thanhvien.setMaTT(rs.getString(16));
			thanhvien.setMaNhom(rs.getString(17));

			list.add(thanhvien);
		}

		return list;
	}

	public ArrayList<ThanhVien> getListIoTLeader() throws SQLException, ClassNotFoundException {
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT * FROM THANHVIEN WHERE MANHOM='IoT' AND MATT='TT1' AND MACV='CV2' ORDER BY HOTEN";
		PreparedStatement ps = connection.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<ThanhVien> list = new ArrayList<>();

		while (rs.next()) {
			ThanhVien thanhvien = new ThanhVien();
			thanhvien.setMaTV(rs.getString(1));
			thanhvien.setTenDN(rs.getString(2));
			thanhvien.setMK(rs.getString(3));
			thanhvien.setHoTen(rs.getString(4));
			thanhvien.setEmail(rs.getString(5));
			thanhvien.setNgaySinh(rs.getDate(6));
			thanhvien.setLop(rs.getString(7));
			thanhvien.setKhoa(rs.getString(8));
			thanhvien.setQue(rs.getString(9));
			thanhvien.setSoDT(rs.getString(10));
			thanhvien.setNgayVaoLab(rs.getDate(11));
			thanhvien.setNgayRoiLab(rs.getDate(12));
			thanhvien.setAvatar(rs.getString(13));
			thanhvien.setMaVien(rs.getString(14));
			thanhvien.setMaCV(rs.getString(15));
			thanhvien.setMaTT(rs.getString(16));
			thanhvien.setMaNhom(rs.getString(17));

			list.add(thanhvien);
		}

		return list;
	}

	public ArrayList<ThanhVien> getListNFVThanhVien() throws SQLException, ClassNotFoundException {
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT * FROM THANHVIEN WHERE MANHOM='NFV' AND MATT='TT1' AND NOT MACV='CV2' ORDER BY HOTEN";
		PreparedStatement ps = connection.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<ThanhVien> list = new ArrayList<>();

		while (rs.next()) {
			ThanhVien thanhvien = new ThanhVien();
			thanhvien.setMaTV(rs.getString(1));
			thanhvien.setTenDN(rs.getString(2));
			thanhvien.setMK(rs.getString(3));
			thanhvien.setHoTen(rs.getString(4));
			thanhvien.setEmail(rs.getString(5));
			thanhvien.setNgaySinh(rs.getDate(6));
			thanhvien.setLop(rs.getString(7));
			thanhvien.setKhoa(rs.getString(8));
			thanhvien.setQue(rs.getString(9));
			thanhvien.setSoDT(rs.getString(10));
			thanhvien.setNgayVaoLab(rs.getDate(11));
			thanhvien.setNgayRoiLab(rs.getDate(12));
			thanhvien.setAvatar(rs.getString(13));
			thanhvien.setMaVien(rs.getString(14));
			thanhvien.setMaCV(rs.getString(15));
			thanhvien.setMaTT(rs.getString(16));
			thanhvien.setMaNhom(rs.getString(17));

			list.add(thanhvien);
		}

		return list;
	}

	public ArrayList<ThanhVien> getListNFVLeader() throws SQLException, ClassNotFoundException {
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT * FROM THANHVIEN WHERE MANHOM='NFV' AND MATT='TT1' AND MACV='CV2' ORDER BY HOTEN";
		PreparedStatement ps = connection.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<ThanhVien> list = new ArrayList<>();

		while (rs.next()) {
			ThanhVien thanhvien = new ThanhVien();
			thanhvien.setMaTV(rs.getString(1));
			thanhvien.setTenDN(rs.getString(2));
			thanhvien.setMK(rs.getString(3));
			thanhvien.setHoTen(rs.getString(4));
			thanhvien.setEmail(rs.getString(5));
			thanhvien.setNgaySinh(rs.getDate(6));
			thanhvien.setLop(rs.getString(7));
			thanhvien.setKhoa(rs.getString(8));
			thanhvien.setQue(rs.getString(9));
			thanhvien.setSoDT(rs.getString(10));
			thanhvien.setNgayVaoLab(rs.getDate(11));
			thanhvien.setNgayRoiLab(rs.getDate(12));
			thanhvien.setAvatar(rs.getString(13));
			thanhvien.setMaVien(rs.getString(14));
			thanhvien.setMaCV(rs.getString(15));
			thanhvien.setMaTT(rs.getString(16));
			thanhvien.setMaNhom(rs.getString(17));

			list.add(thanhvien);
		}

		return list;
	}

	public ArrayList<ThanhVien> getListQoSThanhVien() throws SQLException, ClassNotFoundException {
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT * FROM THANHVIEN WHERE MANHOM='QoS' AND MATT='TT1' AND NOT MACV='CV2' ORDER BY HOTEN";
		PreparedStatement ps = connection.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<ThanhVien> list = new ArrayList<>();

		while (rs.next()) {
			ThanhVien thanhvien = new ThanhVien();
			thanhvien.setMaTV(rs.getString(1));
			thanhvien.setTenDN(rs.getString(2));
			thanhvien.setMK(rs.getString(3));
			thanhvien.setHoTen(rs.getString(4));
			thanhvien.setEmail(rs.getString(5));
			thanhvien.setNgaySinh(rs.getDate(6));
			thanhvien.setLop(rs.getString(7));
			thanhvien.setKhoa(rs.getString(8));
			thanhvien.setQue(rs.getString(9));
			thanhvien.setSoDT(rs.getString(10));
			thanhvien.setNgayVaoLab(rs.getDate(11));
			thanhvien.setNgayRoiLab(rs.getDate(12));
			thanhvien.setAvatar(rs.getString(13));
			thanhvien.setMaVien(rs.getString(14));
			thanhvien.setMaCV(rs.getString(15));
			thanhvien.setMaTT(rs.getString(16));
			thanhvien.setMaNhom(rs.getString(17));

			list.add(thanhvien);
		}

		return list;
	}

	public ArrayList<ThanhVien> getListQoSLeader() throws SQLException, ClassNotFoundException {
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT * FROM THANHVIEN WHERE MANHOM='QoS' AND MATT='TT1' AND MACV='CV2' ORDER BY HOTEN";
		PreparedStatement ps = connection.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<ThanhVien> list = new ArrayList<>();

		while (rs.next()) {
			ThanhVien thanhvien = new ThanhVien();
			thanhvien.setMaTV(rs.getString(1));
			thanhvien.setTenDN(rs.getString(2));
			thanhvien.setMK(rs.getString(3));
			thanhvien.setHoTen(rs.getString(4));
			thanhvien.setEmail(rs.getString(5));
			thanhvien.setNgaySinh(rs.getDate(6));
			thanhvien.setLop(rs.getString(7));
			thanhvien.setKhoa(rs.getString(8));
			thanhvien.setQue(rs.getString(9));
			thanhvien.setSoDT(rs.getString(10));
			thanhvien.setNgayVaoLab(rs.getDate(11));
			thanhvien.setNgayRoiLab(rs.getDate(12));
			thanhvien.setAvatar(rs.getString(13));
			thanhvien.setMaVien(rs.getString(14));
			thanhvien.setMaCV(rs.getString(15));
			thanhvien.setMaTT(rs.getString(16));
			thanhvien.setMaNhom(rs.getString(17));

			list.add(thanhvien);
		}

		return list;
	}

	public ArrayList<ThanhVien> getListSEThanhVien() throws SQLException, ClassNotFoundException {
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT * FROM THANHVIEN WHERE MANHOM='SE' AND MATT='TT1' AND NOT MACV='CV2' ORDER BY HOTEN";
		PreparedStatement ps = connection.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<ThanhVien> list = new ArrayList<>();

		while (rs.next()) {
			ThanhVien thanhvien = new ThanhVien();
			thanhvien.setMaTV(rs.getString(1));
			thanhvien.setTenDN(rs.getString(2));
			thanhvien.setMK(rs.getString(3));
			thanhvien.setHoTen(rs.getString(4));
			thanhvien.setEmail(rs.getString(5));
			thanhvien.setNgaySinh(rs.getDate(6));
			thanhvien.setLop(rs.getString(7));
			thanhvien.setKhoa(rs.getString(8));
			thanhvien.setQue(rs.getString(9));
			thanhvien.setSoDT(rs.getString(10));
			thanhvien.setNgayVaoLab(rs.getDate(11));
			thanhvien.setNgayRoiLab(rs.getDate(12));
			thanhvien.setAvatar(rs.getString(13));
			thanhvien.setMaVien(rs.getString(14));
			thanhvien.setMaCV(rs.getString(15));
			thanhvien.setMaTT(rs.getString(16));
			thanhvien.setMaNhom(rs.getString(17));

			list.add(thanhvien);
		}

		return list;
	}

	public ArrayList<ThanhVien> getListSELeader() throws SQLException, ClassNotFoundException {
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT * FROM THANHVIEN WHERE MANHOM='SE' AND MATT='TT1' AND MACV='CV2' ORDER BY HOTEN";
		PreparedStatement ps = connection.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<ThanhVien> list = new ArrayList<>();

		while (rs.next()) {
			ThanhVien thanhvien = new ThanhVien();
			thanhvien.setMaTV(rs.getString(1));
			thanhvien.setTenDN(rs.getString(2));
			thanhvien.setMK(rs.getString(3));
			thanhvien.setHoTen(rs.getString(4));
			thanhvien.setEmail(rs.getString(5));
			thanhvien.setNgaySinh(rs.getDate(6));
			thanhvien.setLop(rs.getString(7));
			thanhvien.setKhoa(rs.getString(8));
			thanhvien.setQue(rs.getString(9));
			thanhvien.setSoDT(rs.getString(10));
			thanhvien.setNgayVaoLab(rs.getDate(11));
			thanhvien.setNgayRoiLab(rs.getDate(12));
			thanhvien.setAvatar(rs.getString(13));
			thanhvien.setMaVien(rs.getString(14));
			thanhvien.setMaCV(rs.getString(15));
			thanhvien.setMaTT(rs.getString(16));
			thanhvien.setMaNhom(rs.getString(17));

			list.add(thanhvien);
		}

		return list;
	}

	public ThanhVien login(String username, String password) throws SQLException, ClassNotFoundException {
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT * FROM THANHVIEN WHERE TENDN='" + username + "' and MK='" + password + "'";
		PreparedStatement ps = connection.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();

		if (rs.next()) {
			ThanhVien thanhvien = new ThanhVien();

			thanhvien.setMaTV(rs.getString(1));
			thanhvien.setTenDN(rs.getString(2));
			thanhvien.setMK(rs.getString(3));
			thanhvien.setHoTen(rs.getString(4));
			thanhvien.setEmail(rs.getString(5));
			thanhvien.setNgaySinh(rs.getDate(6));
			thanhvien.setLop(rs.getString(7));
			thanhvien.setKhoa(rs.getString(8));
			thanhvien.setQue(rs.getString(9));
			thanhvien.setSoDT(rs.getString(10));
			thanhvien.setNgayVaoLab(rs.getDate(11));
			thanhvien.setNgayRoiLab(rs.getDate(12));
			thanhvien.setAvatar(rs.getString(13));
			thanhvien.setMaVien(rs.getString(14));
			thanhvien.setMaCV(rs.getString(15));
			thanhvien.setMaTT(rs.getString(16));
			thanhvien.setMaNhom(rs.getString(17));

			connection.close();
			return thanhvien;
		}

		return null;
	}

	public ThanhVien update(String matv, String hoten, String email, String ns, String lop, String khoa, String que,
			String dienthoai, String vien, String trangthai, String nhom) throws SQLException, ClassNotFoundException {
		Connection connection = DBConnect.getConnection();
		String sql1 = "UPDATE THANHVIEN SET HOTEN='" + hoten + "', EMAIL='" + email + "', NS = '" + ns + "', LOP='"
				+ lop + "', KHOA='" + khoa + "', QUE='" + que + "', SODT='" + dienthoai + "', MAVIEN='" + vien
				+ "', MATT='" + trangthai + "', MANHOM='" + nhom + "' WHERE MATV = '" + matv + "'";
		PreparedStatement ps = connection.prepareStatement(sql1);
		int row = ps.executeUpdate();

		String sql2 = "SELECT * FROM THANHVIEN WHERE MATV='" + matv + "'";
		ps = connection.prepareStatement(sql2);
		ResultSet rs = ps.executeQuery();

		if (rs.next()) {
			ThanhVien thanhvien = new ThanhVien();

			thanhvien.setMaTV(rs.getString(1));
			thanhvien.setTenDN(rs.getString(2));
			thanhvien.setMK(rs.getString(3));
			thanhvien.setHoTen(rs.getString(4));
			thanhvien.setEmail(rs.getString(5));
			thanhvien.setNgaySinh(rs.getDate(6));
			thanhvien.setLop(rs.getString(7));
			thanhvien.setKhoa(rs.getString(8));
			thanhvien.setQue(rs.getString(9));
			thanhvien.setSoDT(rs.getString(10));
			thanhvien.setNgayVaoLab(rs.getDate(11));
			thanhvien.setNgayRoiLab(rs.getDate(12));
			thanhvien.setAvatar(rs.getString(13));
			thanhvien.setMaVien(rs.getString(14));
			thanhvien.setMaCV(rs.getString(15));
			thanhvien.setMaTT(rs.getString(16));
			thanhvien.setMaNhom(rs.getString(17));

			connection.close();
			ps.close();
			return thanhvien;
		}

		connection.close();
		ps.close();

		return null;
	}

	public ThanhVien changepassword(String matv, String password) throws SQLException, ClassNotFoundException {
		Connection connection = DBConnect.getConnection();
		String sql1 = "UPDATE THANHVIEN SET MK='" + password + "' WHERE MATV = '" + matv + "'";
		PreparedStatement ps = connection.prepareStatement(sql1);
		int row = ps.executeUpdate();

		String sql2 = "SELECT * FROM THANHVIEN WHERE MATV='" + matv + "'";
		ps = connection.prepareStatement(sql2);
		ResultSet rs = ps.executeQuery();

		if (rs.next()) {
			ThanhVien thanhvien = new ThanhVien();

			thanhvien.setMaTV(rs.getString(1));
			thanhvien.setTenDN(rs.getString(2));
			thanhvien.setMK(rs.getString(3));
			thanhvien.setHoTen(rs.getString(4));
			thanhvien.setEmail(rs.getString(5));
			thanhvien.setNgaySinh(rs.getDate(6));
			thanhvien.setLop(rs.getString(7));
			thanhvien.setKhoa(rs.getString(8));
			thanhvien.setQue(rs.getString(9));
			thanhvien.setSoDT(rs.getString(10));
			thanhvien.setNgayVaoLab(rs.getDate(11));
			thanhvien.setNgayRoiLab(rs.getDate(12));
			thanhvien.setAvatar(rs.getString(13));
			thanhvien.setMaVien(rs.getString(14));
			thanhvien.setMaCV(rs.getString(15));
			thanhvien.setMaTT(rs.getString(16));
			thanhvien.setMaNhom(rs.getString(17));

			connection.close();
			ps.close();
			return thanhvien;
		}

		connection.close();
		ps.close();

		return null;
	}

	public Boolean isGiangVien(String matv) throws SQLException, ClassNotFoundException {
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT * FROM THANHVIEN WHERE MATV='" + matv + "' AND MACV='CV0'";
		PreparedStatement ps = connection.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		if (!rs.next()) {
			return false;

		}
		return true;

	}

	public Boolean authenticationUsername(String username) throws SQLException, ClassNotFoundException {
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT * FROM THANHVIEN ";
		PreparedStatement ps = connection.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();

		while (rs.next()) {

			if (username.equals(rs.getString(2))) {
				return true;
			}

		}
		return false;

	}

	public int createAccount(String username, String password, String macv, String ngayvaolab)
			throws SQLException, ClassNotFoundException {
		Connection connection = DBConnect.getConnection();
		String sql = "INSERT INTO THANHVIEN (MATV, TENDN, MK, MACV, NGAYVAOLAB) VALUES ('" + username + "','" + username
				+ "','" + password + "','" + macv + "','" + ngayvaolab + "')";
		PreparedStatement ps = connection.prepareStatement(sql);
		int row = ps.executeUpdate();

		connection.close();
		ps.close();

		return row;
	}

	public int deleteAccount(String username) throws SQLException, ClassNotFoundException {
		Connection connection = DBConnect.getConnection();
		String sql = "DELETE FROM THANHVIEN WHERE TENDN = '" + username + "'";
		PreparedStatement ps = connection.prepareStatement(sql);
		int row = ps.executeUpdate();

		connection.close();
		ps.close();

		return row;
	}

	public static void main(String[] args) throws SQLException, ClassNotFoundException {
		GettingThanhVien gettingthanhvien = new GettingThanhVien();
		for (ThanhVien thanhvien : gettingthanhvien.getListIoTThanhVien()) {
			System.out.print(thanhvien.getMaTV() + " ");
			System.out.println(thanhvien.getNgaySinh() + " ");

		}

	}

}
