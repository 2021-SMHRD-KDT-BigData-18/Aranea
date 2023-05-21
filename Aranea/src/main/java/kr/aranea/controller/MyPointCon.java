package kr.aranea.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.aranea.dao.T_ChatDAO;
import kr.aranea.entity.T_Chat;
import kr.aranea.entity.T_User;

public class MyPointCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		T_User user = (T_User)session.getAttribute("user");
		
		String user_id = user.getUser_id();
		
		System.out.println(user_id);
		
		T_ChatDAO dao = new T_ChatDAO();
		List<T_Chat> list2 = dao.selectChat(user_id);
		
		request.setAttribute("list2", list2);
		

		String nextview = "mypoint";
		
		return nextview;
	}

}
