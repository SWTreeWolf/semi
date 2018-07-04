package semi.action;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Response;

import org.json.simple.JSONObject;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import semi.DAO.review_BoardDAO;
import semi.DTO.review_BoardDTO;

public class review_writeAction {
	String fileNames = "";
	@SuppressWarnings("unchecked")
	public MultipartRequest execute(HttpServletRequest req, HttpServletResponse resp) {

		MultipartRequest multi = null;
		String saveDirectory = "c:/temp";
		int size = 10 * 1024 * 1024;
		String encoding = "UTF-8";
		String fileName = "";
		
		try {
			multi = new MultipartRequest(req, saveDirectory, size, encoding, new DefaultFileRenamePolicy());
			
			Enumeration<String> files = multi.getFileNames();
			
			while (files.hasMoreElements()) {
			
				String file = (String) files.nextElement();
			
				fileName = multi.getFilesystemName(file);
				
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String Path = "c:/temp/" + fileName;
		JSONObject jobj = new JSONObject();
		jobj.put("url", Path);
		resp.setContentType("text/json;charset=utf-8");
		PrintWriter out;
		try {
			out = resp.getWriter();

			out.print(jobj.toJSONString());
			System.out.println(jobj.get("url"));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		review_BoardDAO dao = review_BoardDAO.getInstance();
		review_BoardDTO dto = new review_BoardDTO();
		dto.setWriter(multi.getParameter("wr_name"));
		dto.setPassword(multi.getParameter("wr_password"));
		dto.setEmail(multi.getParameter("wr_email"));
		dto.setSrc(multi.getParameter("wr_homepage"));
		dto.setTitle(multi.getParameter("wr_subject"));
		dto.setupload(fileName);
		dto.setContent(multi.getParameter("summercontent"));
		dto.setLink1(multi.getParameter("wr_link1"));
		dto.setLink2(multi.getParameter("wr_link2"));
		;
		dao.insertMethod(dto);
		return multi;
	}//end execute()
}//end class
