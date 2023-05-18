package kr.aranea.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.aranea.dao.T_UserDAO;
import kr.aranea.entity.T_User;

public class MyUpdateInfoSuccessCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		
	 	String user_name = request.getParameter("user_name");
	 	String user_pw = request.getParameter("user_pw");
	 	String user_phone = request.getParameter("user_phone");
	 	String user_v_account = request.getParameter("user_v_account");
	 	
	 	HttpSession session = request.getSession();
	 	T_User user = (T_User)session.getAttribute("user");
	 	String user_id = user.getUser_id();
	 	
	 	T_User dto = new T_User();
	 	dto.setUser_name(user_name);
	 	dto.setUser_pw(user_pw);
	 	dto.setUser_phone(user_phone);
	 	dto.setUser_v_account(user_v_account);
	 	dto.setUser_id(user_id);
	 	
	 	
	 	T_UserDAO dao = new T_UserDAO();
	 	int row = dao.updateInfo(dto);
	 	
	 	String nextView = "";
	 	
	 	if(row > 0) {
	 		nextView = "redirect:/goMypage.com";
	 		
	 		
	 	} else {
	 		nextView = "redirect:/updateinfo.com";
	 	}
		return nextView;
	}

}
