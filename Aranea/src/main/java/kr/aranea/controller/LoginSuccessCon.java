package kr.aranea.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.aranea.dao.T_UserDAO;
import kr.aranea.entity.T_User;

public class LoginSuccessCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");

		T_User dto = new T_User();
		dto.setUser_id(user_id);
		dto.setUser_pw(user_pw);

		// 기능구현(DB 데이터와 비교)
		T_UserDAO dao = new T_UserDAO();
		T_User user = dao.login(dto);

		// View 화면 연결
		String nextview = "";

		if (user != null) {
			nextview = "redirect:/gomain.com";
			
			HttpSession session = request.getSession();
			
			session.setAttribute("user", user);
			
		} else {
			nextview = "redirect:/login.com";
		}
		
		return nextview;
	}

}
