package consultation_history;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ch_db {
	�޼���
	//1.jdbc ����̹� �ε�
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	try {
		String jdbcDriver = "jdbc:oracle:thin:@localhost:1521:orcl";
		String jdbcId = "scott";
		String jdbcPwd = "tiger";
		String sql = "select * from consultation_history";
		//2.Connection ����
		conn=DriverManager.getConnection(jdbcDriver,jdbcId,jdbcPwd);
		//3.Statement ����
		stmt=conn.createStatement();

		//4.���� ����
		rs=stmt.executeQuery(sql);
		//5.���� ���
		while(rs.next()) {
			
		}

	}catch(Exception ex) {
		ex.printStackTrace();
	}finally {
		//6.����(rs/update)����
		//7.Statement,Connection ����
		if(rs!=null)try {rs.close();}catch(SQLException ex) {}
		if(stmt!=null)try {stmt.close();}catch(SQLException ex) {}
		if(conn!=null)try {conn.close();}catch(SQLException ex) {}
	}
	
}	
	
