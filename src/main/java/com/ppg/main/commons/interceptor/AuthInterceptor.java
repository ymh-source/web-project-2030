package com.ppg.main.commons.interceptor;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AuthInterceptor extends HandlerInterceptorAdapter {
//	특정 경로에 접근할 경우 현재 사용자의 로그인 여부를 체크하는 역할

	private static final Logger logger = LoggerFactory.getLogger(AuthInterceptor.class);

	// 페이지 요청 정보 저장
	private void saveDestination(HttpServletRequest request) {
		
		String uri = request.getRequestURI();
		String query = request.getQueryString();
		if (query == null || query.equals("null")) {
			query = "";
		} else {
			query = "?" + query;
		}
		if (request.getMethod().equals("GET")) {
			logger.info("destination : " + (uri + query));
			request.getSession().setAttribute("destination", uri + query);
		}
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		HttpSession httpSession = request.getSession();

		if (httpSession.getAttribute("login") == null) {

			logger.info("current user is not logged");
			saveDestination(request);
			response.sendRedirect("/2030/user/login");

			return false;

		}
		return true;
	}

}
