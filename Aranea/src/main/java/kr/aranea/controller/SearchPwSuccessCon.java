package kr.aranea.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.aranea.dao.AccountDAO;
import kr.aranea.entity.Account;

public class SearchPwSuccessCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String tel = request.getParameter("tel");
		String pw = request.getParameter("pw");
		
		Account dto = new Account();
		dto.setId(id);
		dto.setTel(tel);
		dto.setPw(pw);
		
		AccountDAO dao = new AccountDAO();
		int row = dao.searchpw(dto);
		
		String nextview = "";
		
		if(row > 0) {
			nextview = "searchpw_success";
		}else {
			System.out.println("아이디나 닉네임이 일치하지 않습니다.");
		}
		
		
		return nextview;
	}

}
