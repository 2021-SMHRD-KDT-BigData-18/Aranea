package kr.aranea.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.aranea.dao.WritingDAO;
import kr.aranea.entity.Account;
import kr.aranea.entity.Writing;

public class WritingUploadCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String path = request.getServletContext().getRealPath("file");
				
		System.out.println(path);
		
		int maxSize = 10*1024*1024;
		
		String encoding = "UTF-8";
		
		DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();
		
		MultipartRequest multi = new MultipartRequest(request, path, maxSize, encoding, rename);
		
		HttpSession session = request.getSession();
		Account user = (Account)session.getAttribute("user");
		
		String id = user.getId();
		String img1 = multi.getFilesystemName("img1");
		String img2 = multi.getFilesystemName("img2");
		String img3 = multi.getFilesystemName("img3");
		String title = multi.getParameter("title");
		String category = multi.getParameter("category");
		String address = multi.getParameter("address");
		String condition = multi.getParameter("condition");
		String price = multi.getParameter("price");
		String content = multi.getParameter("content");
		int counts = Integer.parseInt(multi.getParameter("counts"));
		
		
		Writing dto = new Writing();
		dto.setId(id);
		dto.setImg1(img1);
		dto.setImg2(img2);
		dto.setImg3(img3);
		dto.setTitle(title);
		dto.setCategory(category);
		dto.setAddress(address);
		dto.setCondition(condition);
		dto.setPrice(price);
		dto.setContent(content);
		dto.setCounts(counts);
		
		WritingDAO dao = new WritingDAO();
		int row = dao.write(dto);
		
		session.setAttribute("row", row);
		
		String nextview = "viewWrite";
		
		return nextview;
	}

}
