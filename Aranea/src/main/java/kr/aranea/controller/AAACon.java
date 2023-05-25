package kr.aranea.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.aranea.dao.T_CommodityDAO;
import kr.aranea.dao.T_LocationDAO;
import kr.aranea.entity.T_Commodity;
import kr.aranea.entity.T_Location;

public class AAACon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
int cm_seq = Integer.parseInt(request.getParameter("cm_seq"));
		
		T_CommodityDAO dao = new T_CommodityDAO();
		T_Commodity view = dao.view(cm_seq);
		
		int loc_seq = view.getLoc_seq();
		
		request.setAttribute("list", view);
		
		T_LocationDAO daoo = new T_LocationDAO();
		T_Location select = daoo.select(loc_seq);
		
		
		request.setAttribute("select", select);
		
		String nextView = "";
		
		nextView = "AAA";
		
		return nextView;
	}

}
