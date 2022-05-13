package member;

import java.sql.*;

import databaseCon.DBConnect;

public class MemberDAO {
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	
	public MemberDAO() {
		try {
			con = DBConnect.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void custnoMax() {
		String sql = "select max(custno) from member_tbl_02";
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
		while(rs.next()) {
			System.out.println(rs.getInt("max(custno)"));
			System.out.println(rs.getInt(1));
		}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
}
