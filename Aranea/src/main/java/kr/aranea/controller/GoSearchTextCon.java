package kr.aranea.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.aranea.dao.T_CommodityDAO;
import kr.aranea.entity.T_Commodity;

public class GoSearchTextCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String cm_name = request.getParameter("cm_name");
		
//		HttpSession session = request.getSession();
//		T_Commodity list = (T_Commodity)session.getAttribute("list");
//		String cm_name = list.getCm_name();
//		String cm_desc = list.getCm_desc();
		
		T_Commodity dto = new T_Commodity();
//		dto.setCm_name(cm_name);
//		dto.setCm_desc(cm_desc);
		dto.setCm_name(cm_name);
		dto.setCm_desc(cm_name);
		
		T_CommodityDAO dao = new T_CommodityDAO();
		List<T_Commodity> list = dao.searchList(dto);
		
		request.setAttribute("list", list);
		
		
		String nextView = "";
		
		nextView = "home";
		
		return nextView;
	}

}
