package semi.action;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.DAO.*;
import semi.DTO.*;


public class Inquiry_FileAction {

	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		int num = Integer.parseInt(req.getParameter("num")); 
		InquiryDAO dao = InquiryDAO.getInstance(); 
		String filename=dao.fileMethod(num); 
		
		try {
			String convName = URLEncoder.encode(filename,"UTF-8");
			convName=convName.replace("+", " "); 
			
			resp.setContentType("application.octet-stream");
			
			resp.setHeader("Content-Disposition", 
					"attachment;filename="+convName+";");
			
			File file= new File("c:/temp/", filename); 
			FileInputStream is= new FileInputStream(file); 
			BufferedInputStream bs = new BufferedInputStream(is); 
			BufferedOutputStream bo = 
					new BufferedOutputStream(resp.getOutputStream());
			
			byte buffer[] = new byte[1024]; 
			int len=0;
			while((len=bs.read(buffer))>0) { 
				bo.write(buffer,0,len);  
				bo.flush();   
			}
			
			bs.close();
			is.close();
			bo.close(); 
			
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
}
