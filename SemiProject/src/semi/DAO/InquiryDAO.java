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

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import semi.DAO.*;
import semi.DTO.*;

public class InquiryDAO {

	private Connection conn;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public InquiryDAO() {
		// TODO Auto-generated constructor stub
	}

	private static InquiryDAO dao = new InquiryDAO();

	public static InquiryDAO getInstance() {
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

	public int rowTotalCount(HashMap<String, String> map) {

		int cnt = 0;

		try {
			conn = init();
			String sql = "select count(*) from qna";
			if (map.get("searchKey") != null) {
				sql += " where lower(" + map.get("searchKey") + ")";
				sql += " like lower(?)";
			}
			pstmt = conn.prepareStatement(sql);

			if (map.get("searchKey") != null) {
				pstmt.setString(1, "%"+map.get("searchWord")+"%");
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
	}// end rowTotalCount()

	public List<InquiryDTO> listMethod(PageDTO pdto) {
		List<InquiryDTO> aList = new ArrayList<InquiryDTO>();
		try {
			conn = init();

			String sql = "select b.* from (select rownum rm, a.* from " 
					+ "(select * from qna ";

			if (pdto.getSearchKey()!= null) {
				if (pdto.getSearchKey()!= "") {
					sql += "where lower("+pdto.getSearchKey()+") " 
				+ "like lower('%"+pdto.getSearchWord()+"%') ";
				}
			}
			sql +="order by ref desc, "
					+ "re_step asc)a)b where rm>=? and rm<=?";  
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pdto.getStartRow());
			pstmt.setInt(2, pdto.getEndRow());
			rs = pstmt.executeQuery();
			while (rs.next()) {
				InquiryDTO dto = new InquiryDTO();
				dto.setNum(rs.getInt("num"));
				dto.setWriter(rs.getString("writer"));
				dto.setTitle(rs.getString("title"));
				dto.setQdate(rs.getDate("qdate"));
				dto.setViewcount(rs.getInt("viewcount"));
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
	}// end list

	public InquiryDTO viewMethod(int num) {
		InquiryDTO dto = null;

		try {
			conn = init();
			String sql = "select * from qna where num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				dto = new InquiryDTO();
				dto.setNum(rs.getInt("num"));
				dto.setWriter(rs.getString("writer"));
				dto.setViewcount(rs.getInt("viewcount"));
				dto.setTitle(rs.getString("title"));
				dto.setQdate(rs.getDate("qdate"));
				dto.setContent(rs.getString("content"));
				dto.setUpload(rs.getString("upload"));
				dto.setRef(rs.getInt("ref"));
				dto.setRe_step(rs.getInt("re_step"));
				dto.setRe_level(rs.getInt("re_level"));
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
	}// end viewMethod()

	public void readCountMethod(int num) {
		try {
			conn = init();
			String sql = "update qna set viewcount=viewcount+1 where num=?";
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

	}// end readCountMethod()

	public void insertMethod(InquiryDTO dto) {

		try {
			conn = init();
		//	if (dto.getRe_level() == 0) {
				String sql = "insert into qna(num,writer,password,title,"
						+ "qdate,ref,re_step,re_level,content,email,hpage,lk1,lk2,upload) "
						+ "values(qna_seq.nextval,?,?,?,sysdate,qna_seq.nextval," + "0,0,?,?,?,?,?,?)";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, dto.getWriter());
				pstmt.setString(2, dto.getPassword());
				pstmt.setString(3, dto.getTitle());
				pstmt.setString(4, dto.getContent());
				pstmt.setString(5, dto.getEmail());
				pstmt.setString(6, dto.getHpage());
				pstmt.setString(7, dto.getLk1());
				pstmt.setString(8, dto.getLk2());
				pstmt.setString(9, dto.getUpload());

			/*} else {
				String sql = "insert into qna(num,writer,password,title,"
						+ "qdate,ref,re_step,re_level,content,email,hpage,lk1,lk2,upload) " 
						+ "values(qna_seq.nextval,?,?,?,sysdate,?,"
						+ "?,?,?,?,?,?,?,?)";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, dto.getWriter());
				pstmt.setString(2, dto.getPassword());
				pstmt.setString(3, dto.getTitle());
				pstmt.setInt(4, dto.getRef());
				pstmt.setInt(5, dto.getRe_step());
				pstmt.setInt(6, dto.getRe_level());
				pstmt.setString(7, dto.getContent());
				pstmt.setString(8, dto.getEmail());
				pstmt.setString(9, dto.getHpage());
				pstmt.setString(10, dto.getLk1());
				pstmt.setString(11, dto.getLk2());
				pstmt.setString(12, dto.getUpload());

			}*/

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

	}// end insertMethod()

	public void reStepMethod(HashMap<String, Integer> map) {
		try {
			conn = init();
			String sql = "update qna set re_step=re_step+1 " 
			+ "where ref=? and re_step>?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, map.get("ref"));
			pstmt.setInt(2, map.get("re_step"));
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
	}// end reStepMethod()

	public String fileMethod(int num) {
		String fileName = null;
		try {
			conn = init();
			String sql = "select upload from qna where num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				fileName = rs.getString("upload");
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
		return fileName;
	}// end fileMethod()

	public void updateMethod(InquiryDTO dto) {
		try {

			conn = init();
			String sql = "update qna set title=?,";
			sql += "password=?, content=?, upload=? email=?, hpage=?, lk1=?, lk2=?, where num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getTitle());
			pstmt.setString(2, dto.getPassword());
			pstmt.setString(3, dto.getContent());
			pstmt.setString(4, dto.getUpload());
			pstmt.setString(5, dto.getEmail());
			pstmt.setString(6, dto.getHpage());
			pstmt.setString(7, dto.getLk1());
			pstmt.setString(8, dto.getLk2());
			pstmt.setInt(9, dto.getNum());
			rs = pstmt.executeQuery();

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				exit();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

	}// end updateMethode

	@SuppressWarnings("finally")
	public void deleteMethod(int num) {
		try {
			conn = init();
			String sql = "delete from cm where b_num=? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.executeQuery(); 
			sql="delete from qna where num=?"; 
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
	}// end deleteMethod()

	public String searchPWMethod(int num) {
		
		String password = null;
		try {
			conn = init();
			String sql = "select password from qna where num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				password = rs.getString("password");
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
		return password;
	}//end searchPWMethod()
	
	public void insertCmt(CmtDTO cdto) { 

		try {
			conn = init();
			String sql = "insert into cm values(cm_seq.nextval,?,?,?,sysdate,?)"; 
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cdto.getB_num());
			pstmt.setString(2, cdto.getWriter());
			pstmt.setString(3, cdto.getPassword());
			pstmt.setString(4, cdto.getContent());
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
	}//insertCmt() 
	
	public List<CmtDTO> getCommList(int num) { 
	List<CmtDTO> list = new ArrayList<CmtDTO>(); 
	
	try {
		conn=init();
		String sql = "select * from cm where b_num=? order by c_num"; 
		pstmt = conn.prepareStatement(sql); 
		pstmt.setInt(1, num);
		rs = pstmt.executeQuery(); 
		while(rs.next()) { 
			CmtDTO cdto = new CmtDTO(); 
			cdto.setWriter(rs.getString("writer"));
			cdto.setPassword(rs.getString("password"));
			cdto.setContent(rs.getString("content"));
			cdto.setRdate(rs.getDate("rdate"));
			cdto.setB_num(rs.getInt("b_num"));
			cdto.setC_num(rs.getInt("c_num"));
			list.add(cdto); 
			
		}
	} catch (ClassNotFoundException | SQLException e) {
		e.printStackTrace();
	}
		
		return list; 
	}// end CommList()
	
	public void cmUpdate (CmtDTO cdto) { 
		try {
			conn=init();
			String sql = "update cm set content=? where c_num=?"; 
			pstmt = conn.prepareStatement(sql); 
			pstmt.setString(1, cdto.getContent());
			pstmt.setInt(2, cdto.getC_num());
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
	}//end cmUpdate() 
	
	public void cmDelete (int c_num) { 
		try {
			conn = init();
			String sql = "delete from cm where c_num=?"; 
			pstmt = conn.prepareStatement(sql); 
			pstmt.setInt(1, c_num);
			rs = pstmt.executeQuery(); 
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally { 
			try {
				exit();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}//end cmDelete()
	
public String cm_searchPWMethod(int c_num) {
		
		String password = null;
		try {
			conn = init();
			String sql = "select password from cm where c_num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, c_num);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				password = rs.getString("password");
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
		return password;
	}//end searchPWMethod()
}// end class
