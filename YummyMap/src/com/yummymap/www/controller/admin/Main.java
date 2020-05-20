package com.yummymap.www.controller.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yummymap.www.controller.MmyController;

public class Main implements MmyController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("SID");
		String view = "/admin/main.jsp";
		if(id == null || id.length() == 0) {
			view = "/YummyMap/admin/login.mmy";
		}
		return view;
	}

}
