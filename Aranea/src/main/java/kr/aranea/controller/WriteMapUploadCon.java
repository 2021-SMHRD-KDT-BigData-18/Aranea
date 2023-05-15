package kr.aranea.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import kr.aranea.dao.T_LoctionDAO;
import kr.aranea.entity.T_Location;
import kr.aranea.entity.T_User;

public class WriteMapUploadCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 데이터 수집
		System.out.println("ddddddd");
		request.setCharacterEncoding("UTF-8");

		System.out.println("ddddddd");
		String loc_name = request.getParameter("loc_name");
		System.out.println("fgfdgfd");
		System.out.println(request.getParameter("lat"));
		double lat = Double.parseDouble(request.getParameter("lat"));
		double lng = Double.parseDouble(request.getParameter("lng"));

		HttpSession session = request.getSession();
		T_User user = (T_User) session.getAttribute("user");
		String user_id = user.getUser_id();

		System.out.println(loc_name);
		System.out.println(user_id);
		System.out.println(lat);
		System.out.println(lng);

		Gson gson = new Gson();
		String json = gson.toJson(loc_name);
		System.out.println(json);

		T_Location dto = new T_Location();
		dto.setLoc_name(json);
		dto.setUser_id(user_id);
		dto.setLat(lat);
		dto.setLng(lng);

		// 기능 구현
		response.setCharacterEncoding("UTF-8");

		PrintWriter out = response.getWriter();

		T_LoctionDAO dao = new T_LoctionDAO();
		int row = dao.insert(dto);

		out.print(json);

		return null;
	}

}