package com.envirinment.web.controller.admin;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.envirinment.web.service.admin.WriteArticleService;
import com.envirinment.web.service.admin.WriteRequest;

public class WriteArticleHandler implements CommandHandler{
	private static final String FORM_VIEW = "../view/newArticleForm.jsp";
	private WriteArticleService writeService = new WriteArticleService();
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if(request.getMethod().equalsIgnoreCase("GET")) {
			return processForm(request, response);
		}else if(request.getMethod().equalsIgnoreCase("POST")) {
			return processSubmit(request, response);
		}else {
			response.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
		}
		return null;
	}

	private String processForm(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("processForm");
		return FORM_VIEW;
	}
	
	private String processSubmit(HttpServletRequest request, HttpServletResponse response) throws SQLException {
		Map<String, Boolean> errors = new HashMap<>();
		request.setAttribute("errors", errors);
		
		WriteRequest writeReq = new WriteRequest(request.getParameter("title"), request.getParameter("content"));
		writeReq.validate(errors);
		
		if(!errors.isEmpty()) {
			return FORM_VIEW;
		}
	
		int newArticleNo = writeService.write(writeReq); 
		request.setAttribute("newArticleNo", newArticleNo);
		
		return "/WEB-INF/view/newArticleSuccess.jsp";
	}
	
}
