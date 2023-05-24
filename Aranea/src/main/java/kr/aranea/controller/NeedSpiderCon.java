package kr.aranea.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.aranea.dao.T_CommodityDAO;
import kr.aranea.dao.T_LocationDAO;
import kr.aranea.dao.T_Need_spiderDAO;
import kr.aranea.dao.T_UserDAO;
import kr.aranea.entity.T_Commodity;
import kr.aranea.entity.T_Location;
import kr.aranea.entity.T_Need_Spider;
import kr.aranea.entity.T_User;

public class NeedSpiderCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();

		T_User user = (T_User) session.getAttribute("user");
		int cm_seq = Integer.parseInt(request.getParameter("cm_seq"));

		T_CommodityDAO dao = new T_CommodityDAO();
		T_Commodity list = dao.view(cm_seq);
		
		String cm_name = list.getCm_name();
		String cm_desc = list.getCm_desc();
		String cm_category = list.getCm_category();
		String cm_price = list.getCm_price();
		String cm_img1 = list.getCm_img1();
			
		
		int Loc_seq = list.getLoc_seq();
		
		T_LocationDAO daoo = new T_LocationDAO();
		T_Location list2 = daoo.select(Loc_seq);
		
		String loc_name = list2.getLoc_name();
		
		String user_id = user.getUser_id();
		String user_name = user.getUser_name();
		
		T_UserDAO daooo = new T_UserDAO();
		T_User list3 = daooo.selectUi(user_id);
		
		request.setAttribute("list", list);
		request.setAttribute("list2", list2);
		request.setAttribute("list3", list3);
		
		
		T_Need_Spider dto = new T_Need_Spider();
		dto.setCm_seq(cm_seq);
		dto.setCm_name(cm_name);
		dto.setCm_desc(cm_desc);
		dto.setCm_price(cm_price);
		dto.setLoc_name(loc_name);
		dto.setUser_name(user_name);
		dto.setCm_category(cm_category);
		dto.setCm_img1(cm_img1);
		
		
		T_Need_spiderDAO ddao = new T_Need_spiderDAO();
		int row = ddao.spider(dto);

		
		
		return "redirect:/gomain.com";
	}

}
