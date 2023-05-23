package kr.aranea.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.aranea.dao.T_UserDAO;
import kr.aranea.entity.T_User;

public class SpidermanSuccessCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 스파이더맨 자격 update 관련 코드
		request.setCharacterEncoding("UTF-8");

		String user_name = request.getParameter("user_name");
		String user_phone = request.getParameter("user_phone");
		String user_v_account = request.getParameter("user_v_account");

		T_User dto = new T_User();
		dto.setUser_name(user_name);
		dto.setUser_phone(user_phone);
		dto.setUser_v_account(user_v_account);

		T_UserDAO daoo = new T_UserDAO();
		int row = daoo.spiderman(dto);

		String nextView = "login";
		
		return nextView;
	}

}
