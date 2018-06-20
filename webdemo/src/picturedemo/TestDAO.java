package picturedemo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class TestDAO {
	private Connection conn;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;

	private TestDAO() {
	}

	private static TestDAO dao = new TestDAO();

	public static TestDAO getInstance() {
		return dao;
	}
	private Connection init() throws ClassNotFoundException, SQLException {
		Class.forName("oracle.jdbc.OracleDriver");

		String url = "jdbc:oracle:thin://@127.0.0.1:1521:xe";
		String user = "hr";
		String password = "a1234";
		return DriverManager.getConnection(url, user, password);
	}// end init()

	private void exit() throws SQLException {
		if (rs != null)
			rs.close();
		if (stmt != null)
			stmt.close();
		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();
	}// end exit()
		public void insertMethod(String filename) {
			try {
				conn=init();
				String sql="insert into preview values(preview_num_seq.nextval,?)";
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, filename);
				pstmt.executeUpdate();
			} catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			} finally {
				try {
					exit();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}////////////////
		
		public List<TestDTO> selectMethod(){
			List<TestDTO> aList=new ArrayList<TestDTO>();
			try {
				conn=init();
				String sql="select * from preview order by num desc";
				pstmt =conn.prepareStatement(sql);
				rs=pstmt.executeQuery();
				while(rs.next()) {
					TestDTO dto= new TestDTO();
					dto.setNum(rs.getInt("num"));
					dto.setFilepath(rs.getString("filepath"));
					aList.add(dto);
				}
			} catch (ClassNotFoundException  | SQLException e) {
				e.printStackTrace();
			}finally {
				try {
					exit();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			return aList;
		}
		public List<String>fileList(String chk[]){
			List<String> aList=new ArrayList<String>();
			try {
				conn=init();
				String sql="select filepath from preview where num=?";
				pstmt=conn.prepareStatement(sql);
				for(int i=0;i<chk.length; i++) {
					pstmt.setInt(1,Integer.parseInt(chk[i]));
					rs=pstmt.executeQuery();
					if(rs.next())
						aList.add(rs.getString("filepath"));
				}
			} catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}finally {
				try {
					exit();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			return aList;
		}
		public void deleteMethod(String[] chk) {
			try {
				conn=init();
				String sql="delete from preview where num=?";
				pstmt=conn.prepareStatement(sql);
				for(int i=0; i<chk.length;i++) {
					pstmt.setInt(1,Integer.parseInt(chk[i]));
					pstmt.addBatch();
				}
				pstmt.executeBatch();
			} catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}finally {
				try {
					exit();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}

}//end class
