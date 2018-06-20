package homedemo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class HomeDAO {
	private Connection conn;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private HomeDAO() {}
	
	private static HomeDAO dao = new HomeDAO();
	
	public static HomeDAO getInstance() {
		return dao;
	}
	
	private Connection init() throws ClassNotFoundException, SQLException {
		// 1. 드라이버 로딩
		Class.forName("oracle.jdbc.OracleDriver");
		// 2. 서버연결
		String url = "jdbc:oracle:thin://@127.0.0.1:1521:xe";
		String username = "hr";
		String password = "a1234";
		return DriverManager.getConnection(url, username, password);
	}// end init()
	
	private void exit() throws SQLException {
		if (rs != null) rs.close();
		if (stmt != null) stmt.close();
		if (pstmt != null) pstmt.close();
		if (conn != null) conn.close();
	}// end exit()
	
	//공지사항 - employees
	public List<EmpDTO> getEmpList(String more){
		List<EmpDTO> aList = new ArrayList<EmpDTO>();
		System.out.println(more);
		try {
			conn = init();			
			String sql="select * from employees ";
			 if(more==null)
				 sql+="where rownum<=5 ";
			 sql+="order by employee_id asc";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				EmpDTO dto = new EmpDTO();
				dto.setEmployee_id(rs.getInt("employee_id"));
				dto.setFirst_name(rs.getString("first_name"));
				aList.add(dto);
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				exit();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return aList;
	}
	
	//질문과 답변 - departments
	public List<DeptDTO> getDeptList(String more){
		List<DeptDTO> aList = new ArrayList<DeptDTO>();
		try {
			conn = init();
			String sql="select * from departments ";
			 if(more==null)
				 sql+="where rownum<=5 ";
			   sql+="order by department_id asc";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				DeptDTO dto = new DeptDTO();
				dto.setDepartment_id(rs.getInt("department_id"));
				dto.setDepartment_name(rs.getString("department_name"));
				aList.add(dto);
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
	
	//저자문의 - Locations
	public List<LocDTO> getLocList(String more){
		List<LocDTO> aList = new ArrayList<LocDTO>();
		try {
			conn = init();
			String sql="select * from locations ";
			if(more==null)
				 sql+="where rownum<=5 ";
			sql+="order by location_id asc";		
			
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				LocDTO dto = new LocDTO();
			     dto.setLocation_id(rs.getInt("location_id"));
			     dto.setCity(rs.getString("city"));
				aList.add(dto);
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				exit();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return aList;
	}
	
	
}//end class
