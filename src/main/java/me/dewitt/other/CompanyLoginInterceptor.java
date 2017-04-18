package me.dewitt.other;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import me.dewitt.pojo.Company;

public class CompanyLoginInterceptor extends HandlerInterceptorAdapter {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		Company currCompany = (Company) session.getAttribute("currCompany");
		if(null != currCompany)
			return true;
		request.getRequestDispatcher("CompanyLogin").forward(request, response);
		return false;
	}
}
