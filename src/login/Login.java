package login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Login {
	//로그인
		public int login(String id, String pass) {
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
				
				
			/*String SQL = "SELECT userPassword userName FROM USER1 WHERE userID = ?";*/
			String sql = "SELECT m_pwd, m_name FROM memberbd WHERE m_id=?";
		
			
			System.out.println("db:::"+sql);
			
			try{
				conn = getConnection();
				pstmt = conn.prepareStatement(sql);
				System.out.println("id:::"+id);
				System.out.println("pass"+ pass);
				pstmt.setString(1, id);
				rs=pstmt.executeQuery();
				System.out.println("rs==="+rs);
				if(rs.next()) {
					if(rs.getString(1).equals(pass)) {
						
						return 1;	//로그인 성공
					}
					else {
						System.out.println("불일치");
						return 0;	//비밀번호 불일치
					}
				}
				System.out.println("아이디 없다");
				return -1; //아이디가 없다
			}catch(Exception e) {
				e.printStackTrace();
			}
			return -2; //데이터베이스 오류
		}
		
}
