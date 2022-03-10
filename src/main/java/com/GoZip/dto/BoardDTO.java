package com.GoZip.dto;

import org.apache.ibatis.type.Alias;

@Alias("board")
public class BoardDTO {
	private int b_no;
	private String b_title;
	private String b_content;
	private String b_writer;
	private String b_date;
	private int b_count;
	private int b_like;

	public BoardDTO() {
	}

	public BoardDTO(String b_title, String b_content, String b_writer) {
		super();
		this.b_title = b_title;
		this.b_content = b_content;
		this.b_writer = b_writer;
	}

	public BoardDTO(int b_no, String b_title, String b_content, String b_writer, String b_date, int b_count, int b_like,
			int bhate) {
		this.b_no = b_no;
		this.b_title = b_title;
		this.b_content = b_content;
		this.b_writer = b_writer;
		this.b_date = b_date;
		this.b_count = b_count;
		this.b_like = b_like;
	}

	public int getb_no() {
		return b_no;
	}

	public void setb_no(int b_no) {
		this.b_no = b_no;
	}

	public String getb_title() {
		return b_title;
	}

	public void setb_title(String b_title) {
		this.b_title = b_title;
	}

	public String getb_content() {
		return b_content;
	}

	public void setb_content(String b_content) {
		this.b_content = b_content;
	}

	public String getb_writer() {
		return b_writer;
	}

	public void setb_writer(String b_writer) {
		this.b_writer = b_writer;
	}

	public String getb_date() {
		return b_date;
	}

	public void setb_date(String b_date) {
		this.b_date = b_date;
	}

	public int getb_count() {
		return b_count;
	}

	public void setb_count(int b_count) {
		this.b_count = b_count;
	}

	public int getb_like() {
		return b_like;
	}

	public void setb_like(int b_like) {
		this.b_like = b_like;
	}

}
