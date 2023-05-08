package kr.aranea.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.aranea.dao.AccountDAO;
import kr.aranea.entity.Account;

public class LoginSuccessCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		Account dto = new Account();
		dto.setId(id);
		dto.setPw(pw);

		// 기능구현(DB 데이터와 비교)
		AccountDAO dao = new AccountDAO();
		Account user = dao.login(dto);

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
