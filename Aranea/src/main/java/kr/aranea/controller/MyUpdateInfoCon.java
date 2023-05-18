package kr.aranea.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.aranea.dao.T_UserDAO;
import kr.aranea.entity.T_User;

public class MyUpdateInfoCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		T_User user = (T_User)session.getAttribute("user");
		
		String user_id = user.getUser_id();
		
		T_UserDAO dao = new T_UserDAO();
		T_User list = dao.selectUi(user_id);

		
		session.setAttribute("list2", list);

		String nextview = "myupdateInfo";
		
		return nextview;
	}

}
