package kr.aranea.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.aranea.dao.T_UserDAO;
import kr.aranea.entity.T_User;

public class CheckCon1 implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		
		String user_name=request.getParameter("user_name");
		T_UserDAO dao= new T_UserDAO();
		T_User user1 =dao.check(user_name);
		 
		response.setCharacterEncoding("UTF-8");

		PrintWriter out = response.getWriter();
		
		String res = "";
		
		if(user1 == null) {
			res = "true";
		}else {
			res = "false";
		}
		
		out.print(res);
		return null;
	}

}
