package kr.aranea.frontController;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.aranea.controller.AddressSetCon;
import kr.aranea.controller.CategoryCon;
import kr.aranea.controller.Controller;
import kr.aranea.controller.CreateAccountCon;
import kr.aranea.controller.GoMainCon;
import kr.aranea.controller.GoMypageCon;
import kr.aranea.controller.GoSpiderman;
import kr.aranea.controller.GoSuccessCon;
import kr.aranea.controller.GoWriteCon;
import kr.aranea.controller.JoinCon;
import kr.aranea.controller.LoginCon;
import kr.aranea.controller.LoginSuccessCon;
import kr.aranea.controller.LogoutCon;
import kr.aranea.controller.MyBookmarkCon;
import kr.aranea.controller.MyBuyingListCon;
import kr.aranea.controller.MyPointCon;
import kr.aranea.controller.MySellingListCon;
import kr.aranea.controller.MyUpdateInfoCon;
import kr.aranea.controller.SearchIdCon;
import kr.aranea.controller.SearchIdSuccessCon;
import kr.aranea.controller.SearchPwCon;
import kr.aranea.controller.SearchPwSuccessCon;
import kr.aranea.controller.ViewWritingCon;
import kr.aranea.controller.WriteMapCon;
import kr.aranea.controller.WriteMapUploadCon;
import kr.aranea.controller.WritingUploadCon;

@WebServlet("*.com")
public class FrontController extends HttpServlet {
	
	private HashMap<String, Controller> mappings;
	
	@Override
	public void init() throws ServletException {
		mappings = new HashMap<String, Controller>();
		
		mappings.put("/gomain.com", new GoMainCon());
		mappings.put("/goSuccess.com", new GoSuccessCon());
		mappings.put("/createAccount.com", new CreateAccountCon());
		mappings.put("/goMypage.com", new GoMypageCon());
		mappings.put("/join.com", new JoinCon());
		mappings.put("/login.com", new LoginCon());
		mappings.put("/loginSuccess.com", new LoginSuccessCon());
		mappings.put("/logout.com", new LogoutCon());
		mappings.put("/searchId.com", new SearchIdCon());
		mappings.put("/searchIdSuccess.com", new SearchIdSuccessCon());
		mappings.put("/searchPw.com", new SearchPwCon());
		mappings.put("/searchPwSuccess.com", new SearchPwSuccessCon());
		mappings.put("/writingUpload.com", new WritingUploadCon());
		mappings.put("/goWrite.com", new GoWriteCon());
		mappings.put("/addressSet.com", new AddressSetCon());
		mappings.put("/goSpiderman.com", new GoSpiderman());
		mappings.put("/viewWriting.com", new ViewWritingCon());
		mappings.put("/writeMap.com", new WriteMapCon());
		mappings.put("/writeMapUpload.com", new WriteMapUploadCon());
		mappings.put("/category.com", new CategoryCon());
		mappings.put("/bookmark.com", new MyBookmarkCon());
		mappings.put("/sellingList.com", new MySellingListCon());
		mappings.put("/buyingList.com", new MyBuyingListCon());
		mappings.put("/updateinfo.com", new MyUpdateInfoCon());
		mappings.put("/point.com", new MyPointCon());
		
	}
	
	
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 1. 요청 구분
		// /MessageSystem/join
		String uri = request.getRequestURI();

		// /MessageSystem
		String cpath = request.getContextPath();

		String command = uri.substring(cpath.length());

		String nextView = null;

		Controller con = null;

		
		// 2. 요청에 따라서 기능을 실행
		con = mappings.get(command);

		
		if (con != null) {
			nextView = con.execute(request, response);
		}

		// 3. 페이지 이동
		// 예외처리용
		if (nextView != null) {
			// redirect / forward 구분하기 위해서 규칙필요
			// 앞으로 redirect 요청은 반드시 앞에 redirect:/를 붙이자.
			// goMain.do --> redirect:/goMain.do
			if (nextView.contains("redirect:/")) {
				// nextView = "redirect:/goMain.do"
				// nextView.split(":/"); --> [ "redirect", "goMain.do ]
				response.sendRedirect(nextView.split(":/")[1]);
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/views/" + nextView + ".jsp");
				rd.forward(request, response);

			}

		}

	}

}
