package com.GoZip.dto;

import org.apache.ibatis.type.Alias;

@Alias("message")
public class MessageDTO {
	private String id;
	private String rv_id;
	private String m_content;
	private String m_img;
	private String m_date;

	public MessageDTO() {
	}

	public MessageDTO(String id, String rv_id, String m_content, String m_img, String m_date) {
		super();
		this.id = id;
		this.rv_id = rv_id;
		this.m_content = m_content;
		this.m_img = m_img;
		this.m_date = m_date;
	}

	public MessageDTO(String id, String rv_id, String m_content) {
		super();
		this.id = id;
		this.rv_id = rv_id;
		this.m_content = m_content;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getRv_id() {
		return rv_id;
	}

	public void setRv_id(String rv_id) {
		this.rv_id = rv_id;
	}

	public String getm_content() {
		return m_content;
	}

	public void setm_content(String m_content) {
		this.m_content = m_content;
	}

	public String getm_img() {
		return m_img;
	}

	public void setm_img(String m_img) {
		this.m_img = m_img;
	}

	public String getm_date() {
		return m_date;
	}

	public void setm_date(String m_date) {
		this.m_date = m_date;
	}

	@Override
	public String toString() {
		return "MessageDTO [id=" + id + ", rv_id=" + rv_id + ", m_content=" + m_content + ", m_img=" + m_img
				+ ", m_date=" + m_date + "]";
	}
	
	
	
}
