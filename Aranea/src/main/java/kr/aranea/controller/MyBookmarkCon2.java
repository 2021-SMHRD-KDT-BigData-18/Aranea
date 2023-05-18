package kr.aranea.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.aranea.dao.T_CommodityDAO;
import kr.aranea.dao.T_LikeDAO;
import kr.aranea.entity.T_Commodity;
import kr.aranea.entity.T_Like;
import kr.aranea.entity.T_User;

public class MyBookmarkCon2 implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		HttpSession session = request.getSession();

		T_User user = (T_User) session.getAttribute("user");
		
		String user_id = user.getUser_id();
		
		
		T_LikeDAO dao = new T_LikeDAO();
		List<T_Like> list = dao.book(user_id);

		request.setAttribute("list", list);
		
		return "mybookmark";
	}

}
