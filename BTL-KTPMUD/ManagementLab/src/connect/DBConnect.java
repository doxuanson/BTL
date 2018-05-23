package connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mysql.jdbc.PreparedStatement;

public class DBConnect {
	// Connect to MySQL.
	public static Connection getConnection() throws SQLException, ClassNotFoundException {
		String hostName = "172.16.69.101";
		String dbName = "lab";
		String userName = "wind";
		String password = "123456";

		return getConnection(hostName, dbName, userName, password);
	}

	public static Connection getConnection(String hostName, String dbName, String userName, String password)
			throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.jdbc.Driver");

		String connectionURL = "jdbc:mysql://" + hostName + ":3306/" + dbName
				+ "?useUnicode=true&characterEncoding=utf8&characterSetResults=utf8";

		Connection conn = DriverManager.getConnection(connectionURL, userName, password);
		return conn;
	}

	public static void main(String[] args) throws SQLException, ClassNotFoundException {
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT * FROM CSVC";
		PreparedStatement ps = (PreparedStatement) connection.prepareStatement(sql);

		ResultSet rs = ps.executeQuery();
		while (rs.next()) {

			System.out.println(rs.getString(3));
		}

	}

}
