package login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Login {
	//�α���
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
						
						return 1;	//�α��� ����
					}
					else {
						System.out.println("����ġ");
						return 0;	//��й�ȣ ����ġ
					}
				}
				System.out.println("���̵� ����");
				return -1; //���̵� ����
			}catch(Exception e) {
				e.printStackTrace();
			}
			return -2; //�����ͺ��̽� ����
		}
		
}
