package semi.action;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import semi.DAO.*;
import semi.DTO.*;

public class Inquiry_WriteAction {

	public MultipartRequest execute(HttpServletRequest req, HttpServletResponse resp) { 
		MultipartRequest multi = null;
		String saveDirectory = "c:/temp"; 
		File file = new File(saveDirectory); 
		if(!file.exists())
			file.mkdir(); 
		int maxPostSize = 100000000; //1GB 
		String encoding = "UTF-8"; 
		
		
		InquiryDTO dto = new InquiryDTO(); 
		InquiryDAO dao = InquiryDAO.getInstance(); 
		
		try {
			
			multi = new MultipartRequest(req, saveDirectory,
					maxPostSize, encoding,new DefaultFileRenamePolicy());
			String upload = multi.getFilesystemName("upload"); 
			dto.setWriter(multi.getParameter("writer"));
			dto.setPassword(multi.getParameter("password"));
			dto.setTitle(multi.getParameter("title"));
			dto.setContent(multi.getParameter("content"));
			dto.setUpload(upload);
			dto.setEmail(multi.getParameter("email"));
			dto.setHpage(multi.getParameter("hpage"));
			dto.setLk1(multi.getParameter("lk1"));
			dto.setLk2(multi.getParameter("lk2"));
			
			//답변글이면 
			if(multi.getParameter("re_level")!=null) { 
				HashMap<String, Integer> map = 
						new HashMap<String,Integer>(); 
				map.put("ref", Integer.parseInt(multi.getParameter("ref"))); 
				map.put("re_step",Integer.parseInt(multi.getParameter("re_step"))); 
				dao.reStepMethod(map);
				dto.setRef(Integer.parseInt(multi.getParameter("ref")));
				dto.setRe_step(Integer.parseInt(multi.getParameter("re_step"))+1);
				dto.setRe_level(Integer.parseInt(multi.getParameter("re_level"))+1);
				
			}
			
			dao.insertMethod(dto);
			
		} catch (IOException e) {
			e.printStackTrace();
		} 
		
		return multi; 
		
	}//end execute() 

	private void exit() {
		
	}

}
