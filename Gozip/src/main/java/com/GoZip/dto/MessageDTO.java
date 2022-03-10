package com.GoZip.dto;

import org.apache.ibatis.type.Alias;

@Alias("message")
public class MessageDTO {
	private String m_no;
	private String send_id;
	private String rv_id;
	private String m_content;
	private String m_img;
	private String m_date;
	public MessageDTO() {
	}
	
	public MessageDTO(String m_no, String send_id, String rv_id, String m_content, String m_img, String m_date) {
		super();
		this.m_no = m_no;
		this.send_id = send_id;
		this.rv_id = rv_id;
		this.m_content = m_content;
		this.m_img = m_img;
		this.m_date = m_date;
	}

	public MessageDTO(String send_id, String rv_id, String m_content, String m_img) {
		super();
		this.send_id = send_id;
		this.rv_id = rv_id;
		this.m_content = m_content;
		this.m_img = m_img;
	}

	public String getsend_id() {
		return send_id;
	}

	public void setsend_id(String send_id) {
		this.send_id = send_id;
	}

	public String getrv_id() {
		return rv_id;
	}

	public void setrv_id(String rv_id) {
		this.rv_id = rv_id;
	}

	public String getm_content() {
		return m_content;
	}

	public void setm_content(String m_content) {
		this.m_content = m_content;
	}

	public String getM_img() {
		return m_img;
	}

	public void setM_img(String m_img) {
		this.m_img = m_img;
	}

	public String getm_date() {
		return m_date;
	}

	public void setm_date(String m_date) {
		this.m_date = m_date;
	}

}
