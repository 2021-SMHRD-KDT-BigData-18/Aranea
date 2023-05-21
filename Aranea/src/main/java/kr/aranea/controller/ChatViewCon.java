package kr.aranea.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.aranea.dao.T_ChatDAO;
import kr.aranea.entity.T_Chat;

public class ChatViewCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		String chat_urlpath = request.getParameter("chat_urlpath");
		
		T_ChatDAO dao = new T_ChatDAO();
		List<T_Chat> list2 = dao.chatContent(chat_urlpath);
		
		request.setAttribute("list2", list2);
		request.setAttribute("list3", chat_urlpath);
		
		String nextView = "";
		
		nextView = "chatView";
		
		return nextView;
	}

}
