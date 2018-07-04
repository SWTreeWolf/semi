package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;


@WebFilter("/*")//webdemo에 들어오는 모든 프로젝트는 일단 나를거쳐서 처리가 돼!
//수행하기 전후로 처리한다.
//필터가 여러개있으면 알파벳순으로 실행된다.
public class CharacterFilter implements Filter{

	//필터가 웹콘테이너에서 삭제될 때 호출한다.
	@Override
	public void destroy() {
		
		
	}
	//체인을 따라 다음에 존재하는 필터로 이동한다.
	//체인의 가장 마지막에는 클라이언트가 요청한 최종자원이 위치한다.
	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");
		chain.doFilter(req, resp);
	}
	//필터가 웹 콘테이너에 생성한 후 초기화할 때 호출한다.
	@Override
	public void init(FilterConfig arg0) throws ServletException {
		
		
	}
	
}
