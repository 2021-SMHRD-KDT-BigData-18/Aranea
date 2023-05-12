package kr.aranea.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.aranea.dao.AccountDAO;
import kr.aranea.dao.T_UserDAO;
import kr.aranea.entity.T_User;

public class SearchIdSuccessCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		String user_name = request.getParameter("user_name");
		String user_phone = request.getParameter("user_phone");
		
		T_User dto = new T_User();
		dto.setUser_name(user_name);
		dto.setUser_phone(user_phone);
		
		// 기능 구현
		T_UserDAO dao = new T_UserDAO();
		T_User user = dao.searchId(dto);
		
		// view 연결
		String nextview = "";
		
		if(user != null) {
			nextview = "searchid_success";
			
			System.out.println("아이디찾기 완료");
			
			HttpSession session = request.getSession();
			
			session.setAttribute("user", user);
		}else {
			System.out.println("닉네임이나 전화번호가 일치하지 않습니다.");
		}
		
		
		return nextview;
	}

}
