package com.yummymap.www.controller.member;

import javax.servlet.http.*;

import com.yummymap.www.DAO.*;
import com.yummymap.www.controller.*;

public class LoginProc implements MmyController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String view = "/YummyMap/main_1.mmy";
		req.setAttribute("isRedirect", true);
		
		String sid = req.getParameter("id");
		String spw = req.getParameter("pw");
		MemberDAO mDAO = new MemberDAO();
		int cnt = mDAO.getLoginCnt(sid, spw);
		
		if(cnt == 1) {
			HttpSession session = req.getSession(); session.setAttribute(sid, spw);
			/* view = "/YummyMap/main_1.jsp"; */
		} else {
			view = "/YummyMap/member/login.cls";
		}
		return view;
	}
}
