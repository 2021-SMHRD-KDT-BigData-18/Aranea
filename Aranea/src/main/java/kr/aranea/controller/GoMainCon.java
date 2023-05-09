package kr.aranea.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.aranea.dao.WritingDAO;
import kr.aranea.entity.Writing;

public class GoMainCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		WritingDAO dao = new WritingDAO();
		List<Writing> list = dao.main();
		
		request.setAttribute("list", list);
		
		
		String nextView = "home";
		
		return nextView;
	}

}
