package member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class MemberDAO {
	public static Connection getConnection() throws Exception {
		Class.forName("oracle.jdbc.OracleDriver");
		System.out.println("드라이브 로드 성공");
	Connection con =
				DriverManager.getConnection(
						"jdbc:oracle:thin:@//localhost:1521/xe","java","oracle");
//		return null;
		System.out.println("연결객체 성공적으로 가져옴");
		return con;
	}
}
