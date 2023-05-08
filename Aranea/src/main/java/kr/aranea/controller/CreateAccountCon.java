package kr.aranea.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.aranea.dao.AccountDAO;
import kr.aranea.entity.Account;

public class CreateAccountCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");
		String account = request.getParameter("account");
		
		// 데이터가 2개 이상이면, DTO로 묶기
		Account dto = new Account();
		dto.setId(id);
		dto.setPw(pw);
		dto.setName(name);
		dto.setTel(tel);
		dto.setAddress(address);
		dto.setAccount(account);
		
		// 기능구현
		AccountDAO dao = new AccountDAO();
		int row = dao.create(dto);
		
		// View 화면 구현
		String nextview = "";
		
		if(row>0) {
			nextview = "redirect:/goSuccess.com";
		}else {
			nextview = "redirect:/gomain.com";
		}
		
		
		
		return nextview;
	}

}
