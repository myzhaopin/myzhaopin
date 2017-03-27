package me.dewitt.other;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import me.dewitt.pojo.User;

public class UserLoginInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		User currUser = (User) session.getAttribute("currUser");
		if(null != currUser)
			return true;
		request.getRequestDispatcher("UserLogin").forward(request, response);
		return false;
	}

}
