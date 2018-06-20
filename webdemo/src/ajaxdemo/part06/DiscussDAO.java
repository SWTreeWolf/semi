package ajaxdemo.part06;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import boarddemo.dto.BoardDTO;

public class DiscussDAO {
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	private static DiscussDAO dao=new DiscussDAO();
	private DiscussDAO() {}
	public static DiscussDAO getInstance() {
		return dao;
	}
	private Connection init() throws SQLException, ClassNotFoundException{
		Class.forName("oracle.jdbc.OracleDriver");
		String url="jdbc:oracle:thin://@127.0.0.1:1521:xe";
		String username = "hr";
		String password ="a1234";
		return DriverManager.getConnection(url, username, password);
	}// end init()
	
	private void exit() throws SQLException {
			rs.close();
			pstmt.close();
			conn.close();
	}// end exit()
	
	public List<DiscussDTO> getList(){
		List<DiscussDTO> list = new ArrayList<DiscussDTO>();
		
		try {
			try {
				conn =init();
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			String sql = "select * from discuss order by num desc";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				DiscussDTO dto = new DiscussDTO();
				dto.setNum(rs.getInt("num"));
				dto.setTitle(rs.getString("title"));
				list.add(dto);
			}
		} catch (ClassCastException | SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				exit();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	
	public DiscussDTO getView(int num) {
		DiscussDTO dto = null;
		try {
			conn=init();
			String sql="select * from discuss where num=?";
			pstmt =conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs= pstmt.executeQuery();
			if (rs.next()) {
				dto = new DiscussDTO();
				dto.setNum(rs.getInt("num"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
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
		return dto;
	}
	public List<CommentDTO> getCommList(int num){
		List<CommentDTO> list =new ArrayList<CommentDTO>();
		try {
			conn=init();
			String sql = "select * from comm where num=? order by col";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				CommentDTO dto = new CommentDTO();
				dto.setCol(rs.getInt("col"));
				dto.setNum(rs.getInt("num"));
				dto.setContent(rs.getString("content"));
				list.add(dto);
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
		return list;
	}
	public void commUpdate(CommentDTO dto) {
		try {
			conn=init();
			String sql="update comm set content=? where col=?";
			pstmt =conn.prepareStatement(sql);
			pstmt.setString(1, dto.getContent());
			pstmt.setInt(2, dto.getCol());
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
	
	public void commDelete(int col) {
		try {
			conn=init();
			String sql="delete from comm where col=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1,col);
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
	public void commIntsert(CommentDTO vo) {
		try {
			conn=init();
			String sql = "insert into comm values(comm_seq.nextval,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, vo.getNum());
			pstmt.setString(2, vo.getContent());
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
	

}
