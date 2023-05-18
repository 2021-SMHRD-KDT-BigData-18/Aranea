package kr.aranea.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.aranea.dao.T_CommodityDAO;
import kr.aranea.entity.T_Commodity;
import kr.aranea.entity.T_User;

public class MySellingListCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		T_User user = (T_User)session.getAttribute("user");
		
		String user_id = user.getUser_id();
		
		T_CommodityDAO dao = new T_CommodityDAO();
		List<T_Commodity> list = dao.sellingLIst(user_id);
		
		request.setAttribute("list", list);

		String nextview = "mySellingList";
		
		
		return nextview;
	}

}
