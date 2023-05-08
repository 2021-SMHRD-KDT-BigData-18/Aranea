package kr.aranea.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.aranea.dao.AccountDAO;
import kr.aranea.entity.Account;

public class SearchIdSuccessCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		
		Account dto = new Account();
		dto.setName(name);
		dto.setTel(tel);
		
		// 기능 구현
		AccountDAO dao = new AccountDAO();
		Account user = dao.searchid(dto);
		
		// view 연결
		String nextview = "";
		
		if(user != null) {
			nextview = "searchid_success";
			
			System.out.println("아이디찾기 완료");
			
			HttpSession session = request.getSession();
			
			session.setAttribute("user", user);
		}else {
			System.out.println("닉네임이나 전화번호가 일치하지 않습니다.");
		}
		
		
		return nextview;
	}

}
