package semiproject.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import multicheckdemo.MemberDAO;
import semiproject.dto.PageDTO;
import semiproject.dto.SemiDTO;

public class SemiDAO {
	private Connection conn; 
	private Statement stmt; 
	private PreparedStatement pstmt; 
	private ResultSet rs; 
	
	public SemiDAO() {
		// TODO Auto-generated constructor stub
	}
	
	private static SemiDAO dao = new SemiDAO(); 
	
	public static SemiDAO getInstance() { 
		return dao ; 
	}
	
	private Connection init() throws ClassNotFoundException, SQLException { 
		Class.forName("oracle.jdbc.OracleDriver"); 
		String url = "jdbc:oracle:thin://@127.0.0.1:1521:xe"; 
		String user = "hr"; 
		String password ="a1234"; 
		return DriverManager.getConnection(url,user,password); 
	}
	
	private void exit() throws SQLException { 
		if(rs!=null)
			rs.close();
		if(stmt !=null)
			stmt.close(); 
		if(pstmt !=null)
			pstmt.close(); 
		if(conn !=null)
			conn.close(); 
	}//exit() 
	
	public int rowTotalcount(HashMap<String, String>map) {
		int cnt =0;
		try {
			conn =init();
			String sql="select count(*) from board";
			if(map.get("searchKey")!=null) {
				sql+= " where lower("+map.get("searchKey")+")";
				sql+=" like lower(?)";
			}
			pstmt=conn.prepareStatement(sql);
			if(map.get("searchWord")!=null) {
				pstmt.setString(1, "%"+map.get("searchWord")+"%");
			}
			rs=pstmt.executeQuery();
			if(rs.next())
				cnt=rs.getInt(1);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				exit();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		System.out.println(cnt);
		return cnt;
	}
	
	
	public List<SemiDTO> listMethod(PageDTO pdto) { 
		List<SemiDTO> aList = new ArrayList<SemiDTO>(); 
		try {
			conn=init();
			String sql= "select b.* from" + 
					"(select rownum rm,a.* " + 
					"from(select * from board ";
				if(pdto.getSearchKey()!=null) {
					sql+="where lower("+pdto.getSearchKey()+") like lower('%"+pdto.getSearchWord()+"%') ";
				}
					sql+= "order by ref desc, re_step asc)a)b " + 
					"where rm>=? and rm<=?"; 
			pstmt = conn.prepareStatement(sql); 
			pstmt.setInt(1, pdto.getStartRow());
			pstmt.setInt(2,pdto.getEndRow());
			rs = pstmt.executeQuery(); 
			while(rs.next()) { 
				SemiDTO dto = new SemiDTO(); 
				dto.setNum(rs.getInt("num"));
				dto.setWriter(rs.getString("writer"));
				dto.setSubject(rs.getString("subject"));
				dto.setReadcount(rs.getInt("readcount"));
				dto.setRe_level(rs.getInt("re_level"));
				dto.setUpload(rs.getString("upload"));
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
	}//end list 
	
	public SemiDTO viewMethod(int num) { 
		SemiDTO dto = null; 
		
		try {
			conn=init();
			String sql = "select * from board where num=?"; 
			pstmt = conn.prepareStatement(sql); 
			pstmt.setInt(1,num);
			rs = pstmt.executeQuery(); 
			if(rs.next()) { 
				dto = new SemiDTO(); 
				dto.setNum(rs.getInt("num"));
				dto.setWriter(rs.getString("writer"));
				dto.setReadcount(rs.getInt("readcount"));
				dto.setSubject(rs.getString("subject"));
				dto.setEmail(rs.getString("email"));
				dto.setContent(rs.getString("content"));
				dto.setUpload(rs.getString("upload"));
				dto.setRe_level(rs.getInt("re_level"));
				dto.setRef(rs.getInt("ref"));
				dto.setRe_step(rs.getInt("re_step"));
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
	}//end viewMethod() 
	
	
	public void readCountMethod (int num) { 
		try {
			conn=init();
			String sql="update board set readcount=readcount+1 where num=?"; 
			pstmt=conn.prepareStatement(sql);
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
		
		
		
	}//end readCountMethod() 
	
	public void insertMethod(SemiDTO dto) { 
		
		try {
			conn=init();
			if(dto.getRe_level()==0) {
			String sql="insert into board(num,writer, email,subject,"
					+ "reg_date,ref,re_step,re_level,content,ip,upload) "
					+ "values(board_seq.nextval,?,?,?,sysdate,board_seq.nextval,"
					+ "0,0,?,?,?)";
					//re_step, re_level은 제목글일때는 무조건 0 
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, dto.getWriter());
			pstmt.setString(2, dto.getEmail());
			pstmt.setString(3, dto.getSubject());
			pstmt.setString(4, dto.getContent());
			pstmt.setString(5, dto.getIp());
			pstmt.setString(6, dto.getUpload());
			}else {
				//답변글이면
				String sql="insert into board(num,writer, email,subject,"
						+ "reg_date,ref,re_step,re_level,content,ip,upload) "
						+ "values(board_seq.nextval,?,?,?,sysdate,"
						+ "?,?,?,?,?,?)";
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, dto.getWriter());
				pstmt.setString(2, dto.getEmail());
				pstmt.setString(3, dto.getSubject());
				pstmt.setInt(4, dto.getRef());
				pstmt.setInt(5, dto.getRe_step());
				pstmt.setInt(6, dto.getRe_level());
				pstmt.setString(7, dto.getContent());
				pstmt.setString(8, dto.getIp());
				pstmt.setString(9, dto.getUpload());
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
		
	}//end insertMethod() 
	
	public void reStepMethod(HashMap<String, Integer> map) {
		try {
			conn=init();
			String sql="update board set re_step=re_step+1 where ref=? and re_step>?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, map.get("ref"));
			pstmt.setInt(2, map.get("re_step"));
			pstmt.executeUpdate();
		} catch (ClassNotFoundException | SQLException e ) {
			e.printStackTrace();
		}finally {
			try {
				exit();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	public String fileMethod(int num) {
		String fileName=null;
		try {
			conn=init();
			String sql="select upload from board where num=?";
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
	}//end fileMethod()//
	
	public void updateMethod(SemiDTO dto) {
		try {
			conn=init();
			String sql="update board set subject=?,";
			sql+="email=?,content=?,upload=? where num=?";
			pstmt =conn.prepareStatement(sql);
			pstmt.setString(1, dto.getSubject());
			pstmt.setString(2, dto.getEmail());
			pstmt.setString(3, dto.getContent());
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
	public void DeleteMethod(int num) {
		try {
			conn=init();
			 String sql = "delete from board where num =?";
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
	   public List<SemiDTO> searchMethod(int num) {
		      List<SemiDTO> aList = new ArrayList<SemiDTO>();
		      try {
		         conn = init();
		         String sql = "select upload from board where num = ?";
		         pstmt = conn.prepareStatement(sql);
		         pstmt.setInt(1, num);
		         rs = pstmt.executeQuery();
		         while(rs.next()) {
		            SemiDTO dto = new SemiDTO();
		            dto.setUpload(rs.getString("upload"));
		            aList.add(dto);
		         }
		      } catch (ClassNotFoundException | SQLException e) {
		         // TODO Auto-generated catch block
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
