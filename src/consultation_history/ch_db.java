package consultation_history;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ch_db {
	메서드
	//1.jdbc 드라이버 로딩
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	try {
		String jdbcDriver = "jdbc:oracle:thin:@localhost:1521:orcl";
		String jdbcId = "scott";
		String jdbcPwd = "tiger";
		String sql = "select * from consultation_history";
		//2.Connection 생성
		conn=DriverManager.getConnection(jdbcDriver,jdbcId,jdbcPwd);
		//3.Statement 생성
		stmt=conn.createStatement();

		//4.쿼리 실행
		rs=stmt.executeQuery(sql);
		//5.쿼리 출력
		while(rs.next()) {
			
		}

	}catch(Exception ex) {
		ex.printStackTrace();
	}finally {
		//6.쿼리(rs/update)종료
		//7.Statement,Connection 종료
		if(rs!=null)try {rs.close();}catch(SQLException ex) {}
		if(stmt!=null)try {stmt.close();}catch(SQLException ex) {}
		if(conn!=null)try {conn.close();}catch(SQLException ex) {}
	}
	
}	
	
