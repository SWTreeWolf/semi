package picturedemo;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/insertMain")
public class TestInsertController extends  HttpServlet{
		@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			RequestDispatcher dis= req.getRequestDispatcher("/pictureview/insert.jsp");
			dis.forward(req, resp);
		}//end DG
		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
				MultipartRequest multi=null;
				String saveDirectory="c:\\temp";
				File file=new File(saveDirectory);
				if(!file.isDirectory())
					file.mkdir(); //한번만 작업하면됨.
				int maxPostSize=1*1024*1024*1024; // 1GB크기 지정
				String encoding="UTF-8";
				//new DefaultFileRenamePolicy() : 서버에 저장된 첨부파일 중복제거 
				multi=new MultipartRequest(req, saveDirectory,maxPostSize,encoding,new DefaultFileRenamePolicy());
				
				//<input type="file" name="filepath" id="filepath" />이렇게 되있을때 이렇게 받는다. 
				String filepath=multi.getFilesystemName("filepath");
				//System.out.println(filepath);
				TestDAO dao= TestDAO.getInstance();
				dao.insertMethod(filepath);
				resp.sendRedirect("preview");
		}//end DP
}//end class
