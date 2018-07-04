package semi.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import semi.DTO.review_CommentDTO;

public class review_CommentDAO {
	private Connection conn;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public review_CommentDAO() {
		// TODO Auto-generated constructor stub
	}

	private static review_CommentDAO dao = new review_CommentDAO();

	public static review_CommentDAO getIstance() {
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

	public void commInsert(review_CommentDTO dto) {
		try {
			conn = init();
			String sql = "insert into review_comm values(review_board_comm_seq.nextval,?,?,sysdate,?,?)";
			//System.out.println("done");
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getNum());
			pstmt.setString(2, dto.getId());
			pstmt.setString(3, dto.getPassword());
			pstmt.setString(4, dto.getContent());
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
	}// end commInsert()

	public List<review_CommentDTO> getCommList(int num) {
		List<review_CommentDTO> list = new ArrayList<review_CommentDTO>();
		try {
			conn = init();
			String sql = "select col,num,id,password,content,to_char(reg_date,'MM-DD')as reg_date from review_comm where num=? order by col";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				review_CommentDTO dto = new review_CommentDTO();
				dto.setCol(rs.getInt("col"));
				dto.setNum(rs.getInt("num"));
				dto.setId(rs.getString("id"));
				dto.setPassword(rs.getString("password"));
				dto.setContent(rs.getString("content"));
				dto.setReg_date(rs.getString("reg_date"));
				list.add(dto);
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

		return list;
	}// end getCommList()

	public void commDelete(int col) {
		try {
			conn = init();
			String sql = "delete from review_comm where col=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, col);
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
	}// end commDelete()
}// end class
