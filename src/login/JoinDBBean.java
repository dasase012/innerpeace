package login;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class JoinDBBean {
	//Singleton : getInstance
	private static JoinDBBean instance = new JoinDBBean();
	public static JoinDBBean getInstance() {
		return instance;
	}
	private JoinDBBean() {	
	}
	
	//Connection method
	public static Connection getConnection() {
		Connection conn = null;
		try {
			/*String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:xes";*///	HOME
			String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:orcl";  //	SIST
			String dbId = "scott";
			String dbPass = "tiger";
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
					
		}catch(Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	//close method
	public void close(Connection con, ResultSet rs,PreparedStatement pstmt) {
		if(rs!=null) 
			try {rs.close();}catch(SQLException ex) {}
		if(pstmt!=null) 
			try {pstmt.close();}catch(SQLException ex) {}
		if(con!=null) 
			try {con.close();}catch(SQLException ex) {}
		}
	//login
	public int login(String id, String pwd) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
			
			
		String sql = "SELECT pwd, name FROM member WHERE id=?";
	
		
		System.out.println("db:"+sql);
		
		try{
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			System.out.println("id:"+id);
			System.out.println("password:"+ pwd);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			System.out.println("rs==="+rs);
			if(rs.next()) {
				if(rs.getString(1).equals(pwd)) {
					
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
	
	//insert
	public void insertData(JoinDataBean info) {
		String sql="";
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String id = "";
		
		try {
			
		sql = "insert into member(id,name,pwd,gender,birthdate,tel,email,"
				+ "con_past,con_date,con_cat,position,regdate) "
				+ "values(?,?,?,?,?,?,?,?,?,?,?,sysdate)";
		
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1,info.getId());
		pstmt.setString(2,info.getName());
		pstmt.setString(3,info.getPwd());
		pstmt.setString(4,info.getGender());
		pstmt.setString(5,info.getBirthdate());
		pstmt.setString(6,info.getTel());
		pstmt.setString(7,info.getEmail());
		pstmt.setString(8,info.getCon_past());
		pstmt.setString(9,info.getCon_date());
		pstmt.setString(10,info.getCon_cat());
		pstmt.setString(11,info.getPosition());
		pstmt.executeUpdate();
		}catch(SQLException e1) {
			e1.printStackTrace();
		}finally {
			close(con,rs,pstmt);
		}	
	}	
	
	//delete
	public void deleteData(JoinDataBean a) {
		
	}
	//update
	public void updateData(JoinDataBean a) {
		
	}

}
