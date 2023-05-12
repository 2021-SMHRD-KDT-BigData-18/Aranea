package kr.aranea.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.aranea.dao.AccountDAO;
import kr.aranea.dao.T_UserDAO;
import kr.aranea.entity.T_User;

public class SearchPwSuccessCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		String user_id = request.getParameter("user_id");
		String user_phone = request.getParameter("user_phone");
		String user_pw = request.getParameter("user_pw");
		
		T_User dto = new T_User();
		dto.setUser_id(user_id);
		dto.setUser_phone(user_phone);
		dto.setUser_pw(user_pw);
		
		T_UserDAO dao = new T_UserDAO();
		int row = dao.searchPw(dto);
		
		String nextview = "";
		
		if(row > 0) {
			nextview = "searchpw_success";
		}else {
			System.out.println("아이디나 닉네임이 일치하지 않습니다.");
		}
		
		
		return nextview;
	}

}
