package kr.aranea.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.aranea.dao.T_ChatDAO;
import kr.aranea.dao.T_CommodityDAO;
import kr.aranea.entity.T_Chat;
import kr.aranea.entity.T_Commodity;

public class ChatViewCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		String chat_urlpath = request.getParameter("chat_urlpath");
//		int chat_seq = Integer.parseInt(request.getParameter("chat_seq"));
		
		T_ChatDAO dao = new T_ChatDAO();
//		T_Chat list =  dao.chatContent1(chat_seq);
//		String chat_urlpath = list.getChat_urlpath();
		
//		request.setAttribute("list", list);
		
//		System.out.println(chat_seq);
		System.out.println(chat_urlpath);

		T_Chat list = dao.chatContent(chat_urlpath);
		List<T_Chat> list2 = dao.chatContent1(chat_urlpath);

		request.setAttribute("list", list);
		request.setAttribute("list2", list2);
//		request.setAttribute("list3", chat_urlpath);

		
		
		String nextView = "";

		nextView = "chatView";

		return nextView;
	}

}
