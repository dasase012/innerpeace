package docfind;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class DocfindDB {
	//Singleton : getInstance
		private static DocfindDB instance = new DocfindDB();
		public static DocfindDB getInstance() {
			return instance;
		}
		private DocfindDB() {	
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
		
		public List getDocList(int startRow, int endRow, String boardid) {
			
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			List hosList = null;
			String sql="";
			
			try {
				conn = getConnection();
				sql = "select * from hospital_list";
				pstmt=conn.prepareStatement(sql);
				
				rs=pstmt.executeQuery();
				
			if(rs.next()) {
				hosList = new ArrayList();
				do{
					DocFindData hos = new DocFindData();
					hos.setLocal(rs.getString("local"));
					hos.setHos_name(rs.getString("hos_name"));
					hos.setAdress(rs.getString("adress"));
					hos.setTel(rs.getString("tel"));
					hos.setHp(rs.getString("hp"));
					hosList.add(hos);
				}while(rs.next());}
			}catch(Exception ex) {
				ex.printStackTrace();
			}finally {
				close(conn,rs,pstmt);
			}
			return hosList;
		}
}
