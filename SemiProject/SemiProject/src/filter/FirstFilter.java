package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;


//@WebFilter("/shop") shop이라는 url패턴이 들어올 때만
@WebFilter(filterName="loginCheck",urlPatterns= {"/shop"}) //필터이름,url패턴등록
public class FirstFilter implements Filter{

	@Override
	public void destroy() {

	//필터는 알파벳순으로 클라이언트에서 서버쪽으로 
	//서버가 클라이언트에게 응답할 때는 반대루 
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		chain.doFilter(req, resp);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {

		
	}

}
