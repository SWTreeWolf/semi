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

import semi.DTO.review_BoardDTO;
import semi.DTO.review_PageDTO;

public class review_BoardDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private Statement stmt;
	private ResultSet rs;

	public review_BoardDAO() {

	}

	private static review_BoardDAO dao = new review_BoardDAO();

	public static review_BoardDAO getInstance() {
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
	}// end exit()

	public int rowTotalCount(HashMap<String, String> map) {
		int cnt = 0;
		try {
			conn = init();
			String sql = "select count(*) from review_board";
			if (map.get("searchKey") != null) {
				sql += " where lower(" + map.get("searchKey") + ")";
				sql += " like lower(?)";
			}
			pstmt = conn.prepareStatement(sql);
			if (map.get("searchKey") != null) {
				pstmt.setString(1, "%" + map.get("searchWord") + "%");
			}
			rs = pstmt.executeQuery();
			if (rs.next()) {
				cnt = rs.getInt(1);
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				exit();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return cnt;
	}//end rowTotalCount()

	public void insertMethod(review_BoardDTO dto) {
		try {
			conn = init();
			String sql = "insert into review_board(num, writer, password, email,"
					+ "src,title,upload,content,link1,link2,reg_date)"
					+ " values(review_board_seq.nextval,?,?,?,?,?,?,?,?,?,sysdate)";
			pstmt = conn.prepareStatement(sql);
			System.out.println(sql);
			pstmt.setString(1, dto.getWriter());
			pstmt.setString(2, dto.getPassword());
			pstmt.setString(3, dto.getEmail());
			pstmt.setString(4, dto.getSrc());
			pstmt.setString(5, dto.getTitle());
			pstmt.setString(6, dto.getupload());
			pstmt.setString(7, dto.getContent());
			pstmt.setString(8, dto.getLink1());
			pstmt.setString(9, dto.getLink2());
			pstmt.executeQuery();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				exit();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}//end insertMethod()

	public List<review_BoardDTO> listMethod(review_PageDTO pdto) {
		List<review_BoardDTO> aList = new ArrayList<review_BoardDTO>();
		try {
			conn = init();
			String sql = " select b.* from (select rownum rm, a.* "
					+ "from ( select num, readcount,writer,password, email,src,title,upload,content,link1,link2,to_char(reg_date,'MM-DD')as reg_date from review_board ";
			if (pdto.getSearchKey() != null) {
				sql += "where lower(" + pdto.getSearchKey() + ") like lower('%" + pdto.getSearchWord() + "%')";
			}
			sql += "order by num desc)a)b" + " where rm>=? and rm<=?";
			System.out.println(sql);
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pdto.getStartRow());
			pstmt.setInt(2, pdto.getEndRow());
			rs = pstmt.executeQuery();
			while (rs.next()) {
				review_BoardDTO dto = new review_BoardDTO();
				dto.setnum(rs.getInt("num"));
				dto.setWriter(rs.getString("writer"));
				dto.setPassword(rs.getString("password"));
				dto.setEmail(rs.getString("email"));
				dto.setSrc(rs.getString("src"));
				dto.setTitle(rs.getString("title"));
				dto.setupload(rs.getString("upload"));
				dto.setContent(rs.getString("content"));
				dto.setLink1(rs.getString("link1"));
				dto.setLink1(rs.getString("link2"));
				dto.setReg_date(rs.getString("reg_date"));
				dto.setReadcount(rs.getInt("readcount"));
				aList.add(dto);

			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				exit();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return aList;
	}//end listMethod()

	public void readCountMethod(int num) {
		try {
			conn = init();
			String sql = "update review_board set readcount = readcount +1 where num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				exit();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}//end readCountMethod()

	public review_BoardDTO viewMethod(int num) {
		review_BoardDTO dto = null;
		try {
			conn = init();
			String sql = "select * from review_board where num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				dto = new review_BoardDTO();
				dto.setnum(rs.getInt("num"));
				dto.setWriter(rs.getString("writer"));
				dto.setReadcount(rs.getInt("readcount"));
				dto.setPassword(rs.getString("password"));
				dto.setEmail(rs.getString("email"));
				dto.setSrc(rs.getString("src"));
				dto.setTitle(rs.getString("title"));
				dto.setupload(rs.getString("upload"));
				dto.setContent(rs.getString("content"));
				dto.setLink1(rs.getString("link1"));
				dto.setLink1(rs.getString("link2"));
				dto.setReg_date(rs.getString("reg_date"));
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				exit();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return dto;
	}//end viewMethod()

	public void updateMethod(review_BoardDTO dto) {
		try {
			conn = init();
			String sql = "update review_board set email=?,src=?,title=?,upload=?,content=?,link1=?,link2=?,reg_date=sysdate where num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getEmail());
			pstmt.setString(2, dto.getSrc());
			pstmt.setString(3, dto.getTitle());
			pstmt.setString(4, dto.getupload());
			pstmt.setString(5, dto.getContent());
			pstmt.setString(6, dto.getLink1());
			pstmt.setString(7, dto.getLink2());
			pstmt.setInt(8, dto.getnum());
			pstmt.executeUpdate();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				exit();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}//end updateMethod()

	public String fileMethod(int num) {
		String fileName = null;
		try {
			conn = init();
			String sql = "select upload from review_board where num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				fileName = rs.getString("upload");
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				exit();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return fileName;
	}//end fileMethod()

	public void deleteMethod(int num) {
		try {
			conn = init();
			String sql = "delete from review_comm where num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.executeQuery();
			
			sql = "delete from review_board where num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.executeQuery();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				exit();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}//end deleteMethod()
}//end class
