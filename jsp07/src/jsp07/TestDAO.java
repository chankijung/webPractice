package jsp07;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class TestDAO {
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	public TestDAO() throws Exception {
			con= DBConnect.getConnection();
	}
	public ArrayList<TestDTO> list(int start, int end){
		//String sql="select * from paging";
		//String sql = "select * from paging order by num desc";
		String sql = 
			      "select B.* from(select rownum rn, A.* "
			      +"from(select * from paging order by num desc)A)B"
			            +" where rn between ? and ?";
		ArrayList<TestDTO> li =new ArrayList<TestDTO>();
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, start);
			ps.setInt(2, end);
			rs = ps.executeQuery();
			while(rs.next()) {
				TestDTO dto =new TestDTO();
				dto.setNum(rs.getInt("num"));
				dto.setCount(rs.getInt("count"));
				dto.setPdate(rs.getString("pdate"));
				dto.setTitle(rs.getString("title"));
				li.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return li;
	}
	public void insert(String title) {
		String sql="insert into paging(num, title, pdate, count)"
				+ "values(test_num.nextval,?,sysdate,0)";
		try {
			ps=con.prepareStatement(sql);
			ps.setString(1, title);
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void count(int num) {
		String sql ="update paging set count= count+1 where num="+num;
		try {
			ps = con.prepareStatement(sql);
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();		
			}
	}
	
	public int getTotalPage() {
		String sql = "select count(*) from paging";
		int totPage=0;
		try {
			ps=con.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				//totPage=rs.getInt(1);
				totPage = rs.getInt("count(*)");
			}
		} catch (Exception e) {
			e.printStackTrace();
			}
	return totPage;}
	
}







