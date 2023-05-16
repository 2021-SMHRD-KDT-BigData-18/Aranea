package kr.aranea.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.aranea.dao.T_CommodityDAO;
import kr.aranea.dao.T_Commodity_delDAO;
import kr.aranea.entity.T_Commodity;


public class GoMainCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		T_CommodityDAO dao = new T_CommodityDAO();
		List<T_Commodity> list = dao.main();
		
		request.setAttribute("list", list);
		
		
		String nextView = "home";
		
		return nextView;
	}

}
