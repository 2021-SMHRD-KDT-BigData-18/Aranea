package kr.aranea.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.aranea.dao.T_UserDAO;
import kr.aranea.entity.T_User;

public class CreateAccountCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		String user_name = request.getParameter("user_name");
		String user_phone = request.getParameter("user_phone");
		String user_v_account = request.getParameter("user_v_account");
		
		// 데이터가 2개 이상이면, DTO로 묶기
		T_User dto = new T_User();
		dto.setUser_id(user_id);
		dto.setUser_pw(user_pw);
		dto.setUser_name(user_name);
		dto.setUser_v_account(user_v_account);
		
		// 기능구현
		T_UserDAO dao = new T_UserDAO();
		int row = dao.create(dto);
		
		// View 화면 구현
		String nextview = "";
		
		if(row>0) {
			nextview = "redirect:/goSuccess.com";
		}else {
			nextview = "redirect:/gomain.com";
		}
		
		
		
		return nextview;
	}

}
