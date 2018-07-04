package semi.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import semi.DTO.Notice_PageDTO;
import semi.DTO.Notice_SemiProDTO;

public class Notice_SemiProDAO {
	private Connection conn;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public Notice_SemiProDAO() {

	}

	private static Notice_SemiProDAO dao = new Notice_SemiProDAO();

	public static Notice_SemiProDAO getInstance() {
		return dao;
	}

	private Connection init() throws ClassNotFoundException, SQLException {
		Class.forName("oracle.jdbc.OracleDriver");
		String url = "jdbc:oracle:thin://@127.0.0.1:1521:xe";
		String user = "hr";
		String password = "a1234";
		return DriverManager.getConnection(url, user, password);
	}

	private void exit() throws SQLException {
		if (rs != null)
			rs.close();
		if (stmt != null)
			stmt.close();
		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();
	}// exit()

	public void readCountMethod(int num) {
		try {
			conn = init();
			String sql = "update noticeboard set readcount=readcount+1 where num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
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
	}
	public void updateMethod(Notice_SemiProDTO dto) {
		try {
			conn=init();
			String sql= "update noticeboard set writer=?, subject=?,";
			sql += "summernote=?, upload=? where num=?";
			pstmt =conn.prepareStatement(sql);
			pstmt.setString(1, dto.getWriter());
			pstmt.setString(2, dto.getSubject());
			pstmt.setString(3, dto.getSummernote());
			pstmt.setString(4, dto.getUpload());
			pstmt.setInt(5, dto.getNum());
			pstmt.executeUpdate();
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

	public List<Notice_SemiProDTO> listMethod(Notice_PageDTO pdto) {
		List<Notice_SemiProDTO> aList = new ArrayList<Notice_SemiProDTO>();
		try {
			conn = init();
			String sql = "select b.* from (select rownum rm,a.* from " + "(select * from noticeboard ";
			if (pdto.getSearchKey() != null) {
				if(pdto.getSearchKey() !="") {
				sql += "where lower(" + pdto.getSearchKey() + ") like lower('%" + pdto.getSearchWord() + "%')";
			}
			}
			sql += "order by ref desc, " + "re_step asc)a)b where rm>=? and rm<=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pdto.getStartRow());
			pstmt.setInt(2, pdto.getEndRow());
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Notice_SemiProDTO dto = new Notice_SemiProDTO();
				dto.setNum(rs.getInt("num"));
				dto.setReadcount(rs.getInt("readcount"));
				dto.setWriter(rs.getString("writer"));
				dto.setSubject(rs.getString("subject"));
				dto.setReg_date(rs.getDate("reg_date"));
				dto.setRe_level(rs.getInt("re_level"));
				aList.add(dto);
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				exit();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return aList;

	}
	public String fileMethod(int num) {
		String fileName=null;
		try {
			conn=init();
			String sql="select upload from noticeboard where num=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				fileName=rs.getString("upload");
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
		return fileName;
	}

	public Notice_SemiProDTO viewMethod(int num) {
		Notice_SemiProDTO dto = null;
		try {
			conn = init();
			String sql = "select * from noticeboard where num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				dto = new Notice_SemiProDTO();
				dto.setNum(rs.getInt("num"));
				dto.setReadcount(rs.getInt("readcount"));
				dto.setWriter(rs.getString("writer"));
				dto.setSubject(rs.getString("subject"));
				dto.setSummernote(rs.getString("summernote"));
				dto.setReg_date(rs.getDate("reg_date"));
				dto.setRef(rs.getInt("ref"));
				dto.setRe_step(rs.getInt("re_step"));
				dto.setRe_level(rs.getInt("re_level"));
				dto.setUpload(rs.getString("upload"));
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				exit();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return dto;

	}

	public void insertMethod(Notice_SemiProDTO dto) {
		try {
			conn = init();
			if(dto.getRe_level()==0) {
			String sql = "insert into noticeboard(num,readcount,writer,subject,summernote,reg_date,ref,re_step,re_level) "
					+ " values (noticeboard_seq.nextval,0,?,?,?,sysdate,noticeboard_seq.nextval,0,0)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getWriter());
			pstmt.setString(2, dto.getSubject());
			pstmt.setString(3, dto.getSummernote());
			}else {
				String sql="insert into noticeboard(num,readcount,writer,subject,summernote,reg_date,ref,re_step,re_level) "
						+ "values (noticeboard_seq.nextval,0,?,?,?,sysdate,?,?,?)";
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, dto.getWriter());
				pstmt.setString(2, dto.getSubject());
				pstmt.setInt(3, dto.getRef());
				pstmt.setInt(4, dto.getRe_step());
				pstmt.setInt(5, dto.getRe_level());
				pstmt.setString(6, dto.getSummernote());
			}
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
	}
	public void reStepMethod(HashMap<String, Integer>map) {
		try {
			conn = init();
			String sql ="update noticeboard set re_step=re_step+1 " + "where ref=? and re_step>?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, map.get("ref"));
			pstmt.setInt(2, map.get("re_step"));
			pstmt.executeUpdate();
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
	public List<Notice_SemiProDTO> searchMethod(int num){
		List<Notice_SemiProDTO> aList =new ArrayList<Notice_SemiProDTO>();
		try {
			conn=init();
			String sql = "select upload from noticeboard where num = ?";
			pstmt =conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs =pstmt.executeQuery();
			while(rs.next()) {
				Notice_SemiProDTO dto =new Notice_SemiProDTO();
				dto.setUpload(rs.getString("upload"));
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
	public void DeleteMethod(int num) {
		try {
			conn=init();
			String sql ="delete from noticeboard where num =?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
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

	public int rowTotalcount(HashMap<String, String> map) {
		int cnt = 0;
		try {
			conn = init();
			String sql = "select count(*) from noticeboard";
			if (map.get("searchKey") != null) {
				sql += " where lower(" + map.get("searchKey") + ")";
				sql += " like lower(?)";
			}
			pstmt = conn.prepareStatement(sql);
			
			if (map.get("searchKey") != null) {
				pstmt.setString(1, "%" + map.get("searchWord") + "%");
			}
			rs = pstmt.executeQuery();
			if (rs.next())
				cnt = rs.getInt(1);
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				exit();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return cnt;
	}

}
