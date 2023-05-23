package kr.aranea.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.aranea.dao.T_CommodityDAO;
import kr.aranea.entity.T_Commodity;
import kr.aranea.entity.T_User;

public class buypageCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int cm_seq = Integer.parseInt(request.getParameter("cm_seq"));

		T_CommodityDAO dao = new T_CommodityDAO();
		T_Commodity view = dao.view(cm_seq);

		request.setAttribute("list", view);
		
		HttpSession session = request.getSession();

		T_User user = (T_User)session.getAttribute("user");
		
		String nextView = "";
		
		if(user == null) nextView = "login";
		else nextView = "buypage";

		return nextView;
	}

}
