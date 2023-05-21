package kr.aranea.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.aranea.dao.T_UserDAO;
import kr.aranea.entity.T_User;

public class CheckCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		
		String user_id=request.getParameter("user_id");
		T_UserDAO dao= new T_UserDAO();
		T_User user =dao.check(user_id);
		 
		response.setCharacterEncoding("UTF-8");

		PrintWriter out = response.getWriter();
		
		String res = "";
		
		if(user == null) {
			res = "true";
		}else {
			res = "false";
		}
		
		out.print(res);
		return null;
	}

}
