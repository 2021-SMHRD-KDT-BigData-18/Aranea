package kr.aranea.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.aranea.dao.T_Need_spiderDAO;
import kr.aranea.entity.T_Need_Spider;

public class HelpSpiderCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		T_Need_spiderDAO dao = new T_Need_spiderDAO();
		List<T_Need_Spider> list = dao.spiderview();
		
		request.setAttribute("list", list);
		
		
		
		return "helpSpider";
	}

}
