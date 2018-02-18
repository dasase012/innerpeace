package login;

import java.sql.Connection;
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
			String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:xes";
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
	//insert
	public void insertData(JoinDataBean a) {
		
	}
	//delete
	public void deleteData(JoinDataBean a) {
		
	}
	//update
	public void updateData(JoinDataBean a) {
		
	}

}
