package kr.aranea.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.aranea.dao.T_CommodityDAO;
import kr.aranea.entity.T_Commodity;
import kr.aranea.entity.T_Location;
import kr.aranea.entity.T_User;

public class WritingUploadCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		String path = request.getServletContext().getRealPath("file");

		System.out.println(path);

		int maxSize = 10 * 1024 * 1024;

		String encoding = "UTF-8";

		DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();

		MultipartRequest multi = new MultipartRequest(request, path, maxSize, encoding, rename);

		HttpSession session = request.getSession();

		T_User user = (T_User)session.getAttribute("user");
		
		

		String cm_name = multi.getParameter("cm_name");
		String user_id = user.getUser_id();
		String cm_desc = multi.getParameter("cm_desc");
		String cm_img1 = multi.getFilesystemName("cm_img1");
		String cm_img2 = multi.getFilesystemName("cm_img2");
		String cm_img3 = multi.getFilesystemName("cm_img3");
		String cm_category = multi.getParameter("cm_category");
		String cm_status = multi.getParameter("cm_status");
		String cm_price = multi.getParameter("cm_price");
		String deal_status = "판매중";
		String user_name = user.getUser_name();

		T_Commodity dto = new T_Commodity();
		dto.setUser_id(user_id);
		dto.setCm_name(cm_name);
		dto.setCm_desc(cm_desc);
		dto.setCm_img1(cm_img1);
		dto.setCm_img2(cm_img2);
		dto.setCm_img3(cm_img3);
		dto.setCm_category(cm_category);
		dto.setCm_status(cm_status);
		dto.setCm_price(cm_price);
		dto.setDeal_status(deal_status);
		dto.setUser_name(user_name);
		

		String nextview = "";

		T_CommodityDAO dao = new T_CommodityDAO();
		int row = dao.write(dto);

		session.setAttribute("row", row);

		if (row > 0) {
			nextview = "redirect:/gomain.com";

		}

		return nextview;
	}
}
