package member;

import java.sql.*;
import java.sql.SQLException;
import java.util.ArrayList;

public class MemberDAO {
public static Connection getConnection() throws Exception {
	Class.forName("oracle.jdbc.OracleDriver");
	System.out.println("최초 드라이브 로드 성공");
	Connection con = 
			DriverManager.getConnection(
"jdbc:oracle:thin:@//localhost:1521/xe","java","1234");
	System.out.println("연결객체 성공적으로 가져옴");
	return con;
}
	public ArrayList<MemberDTO> getMembers() throws Exception{
		ArrayList<MemberDTO> arr = 
				new ArrayList<MemberDTO>();
		Connection conn = MemberDAO.getConnection();
		String sql = "select * from members";
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			MemberDTO dto = new MemberDTO();
			dto.setId(rs.getString("id"));
			dto.setPwd(rs.getString("pwd"));
			arr.add(dto);
		}
		return arr;
	}
}











