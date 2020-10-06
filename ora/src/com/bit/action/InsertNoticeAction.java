package com.bit.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.dao.NoticeDao;

public class InsertNoticeAction implements DsAction {

	@Override
	public String action(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		NoticeDao dao = new NoticeDao();
		request.setAttribute("category", dao.getBoardCategory("006"));
		return "insertNotice.jsp";
	}

}
