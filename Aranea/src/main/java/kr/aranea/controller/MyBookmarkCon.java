package kr.aranea.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.aranea.dao.T_CommodityDAO;
import kr.aranea.dao.T_LikeDAO;
import kr.aranea.entity.T_Commodity;
import kr.aranea.entity.T_Like;
import kr.aranea.entity.T_User;

public class MyBookmarkCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		HttpSession session = request.getSession();

		T_User user = (T_User) session.getAttribute("user");

		int cm_seq = Integer.parseInt(request.getParameter("cm_seq"));

		T_CommodityDAO dao = new T_CommodityDAO();
		T_Commodity view = dao.view(cm_seq);

		String cm_category = view.getCm_category();
		String cm_name = view.getCm_name();
		String cm_price = view.getCm_price();
		String user_id = user.getUser_id();
		String cm_img1 = view.getCm_img1();

		T_Like dto = new T_Like();
		dto.setCm_seq(cm_seq);
		dto.setCm_name(cm_name);
		dto.setCm_category(cm_category);
		dto.setCm_price(cm_price);
		dto.setUser_id(user_id);
		dto.setCm_img1(cm_img1);

		T_LikeDAO daoo = new T_LikeDAO();
		int row = daoo.insert(dto);

		String nextView = "";

		if (user == null)
			nextView = "login";
		else
			nextView = "redirect:/gomain.com";

		return nextView;
	}

}
