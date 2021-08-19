package com.envirinment.web.entity.admin;

public class NewsArticle {
	
	private Integer number;
	private String title;
	private String content;
	
	public NewsArticle(Integer number, String title, String content) {
		this.number = number;
		this.title = title;
		this.content = content;
	}

	public Integer getNumber() {
		return number;
	}

	public String getTitle() {
		return title;
	}

	public String getContent() {
		return content;
	}
	
	

}
