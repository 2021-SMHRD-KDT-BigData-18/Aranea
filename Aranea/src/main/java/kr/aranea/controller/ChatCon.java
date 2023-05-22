package kr.aranea.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.aranea.dao.T_CommodityDAO;
import kr.aranea.dao.T_DealingDAO;
import kr.aranea.entity.T_Commodity;
import kr.aranea.entity.T_Dealing;

public class ChatCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
//		T_Dealing dto = new T_Dealing();
//		
//		T_DealingDAO dao = new T_DealingDAO();
//		T_Dealing list = dao.select(dto);
//		
		
		
		int cm_seq = Integer.parseInt(request.getParameter("cm_seq"));
		
		T_CommodityDAO dao = new T_CommodityDAO();
		T_Commodity list = dao.view(cm_seq);
		
		request.setAttribute("list", list);
		
		
		String nextView = "";
		nextView = "chat";
		return nextView;
	}

}
