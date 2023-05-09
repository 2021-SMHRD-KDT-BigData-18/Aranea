package kr.aranea.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.aranea.dao.WritingDAO;
import kr.aranea.entity.Writing;

public class ViewWritingCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int num = Integer.parseInt(request.getParameter("num"));
		
		WritingDAO dao = new WritingDAO();
		Writing view = dao.view(num);
		
		request.setAttribute("list", view);
		
		String nextView = "";
		
		nextView = "viewWrite";
		
		return nextView;
	}

}
