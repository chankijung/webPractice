package database_con;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	public static Connection getConnection() throws Exception {
		Class.forName("oracle.jdbc.OracleDriver");
		System.out.println("DBConnect On!");
		Connection con = DriverManager.getConnection(
				"jdbc:oracle:thin:@//localhost:1521/xe","java","oracle");
		System.out.println("오라클 db 접속완료");
		return con;
	}

}
