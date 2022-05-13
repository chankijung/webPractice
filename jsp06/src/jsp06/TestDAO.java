package jsp06;

import java.util.ArrayList;

public class TestDAO {
	public int loginChk(String id, String pwd) {
		System.out.println("id :"+id);
		System.out.println("pwd :"+pwd);
		// 비교 후 성공 0, 실패 1
		return 0;
	}
	public TestDTO getUser() {
		TestDTO dto = new TestDTO();
		dto.setName("홍길동");
		dto.setAddr("산골짜기");
		return dto;
	}
	public ArrayList<TestDTO> list(){
	      ArrayList<TestDTO> li = new ArrayList<>();
	      for(int i =1; i<5; i++) {
	         TestDTO dto = new TestDTO();
	         dto.setAddr("산골짜기"+i);
	         dto.setName("홍길동"+i);
	         li.add(dto);
	      }
	      return li;
	   }
}
