package kr.aranea.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.aranea.dao.T_CommodityDAO;
import kr.aranea.entity.T_Commodity;

public class MySellingListCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		T_CommodityDAO dao = new T_CommodityDAO();
		List<T_Commodity> list = dao.sellingLIst();
		
		request.setAttribute("list", list);

		String nextview = "mySellingList";
		
		return nextview;
	}

}
