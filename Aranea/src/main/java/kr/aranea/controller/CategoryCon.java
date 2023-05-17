package kr.aranea.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.aranea.dao.T_CommodityDAO;
import kr.aranea.entity.T_Commodity;

public class CategoryCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		// 데이터 수집
		String cm_category = request.getParameter("cm_category");

		// 기능 구현
		T_CommodityDAO dao = new T_CommodityDAO();
		List<T_Commodity> list = dao.category(cm_category);

		request.setAttribute("list", list);

		// View 선택
		String nextView = "home";

		return nextView;
	}

}
