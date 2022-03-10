package com.GoZip.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.GoZip.dto.MemberDTO;
import com.GoZip.dto.MessageDTO;
import com.GoZip.mapper.MessageMapper;

@Service
public class MessageService {
	private MessageMapper mapper;

	public MessageService(MessageMapper mapper) {
		this.mapper = mapper;
	}

	public void writeMessage(MessageDTO messageDTO) {
		mapper.writeMessage(messageDTO);
	}

	public MemberDTO selectId(String rv_id) {
		return mapper.selectId(rv_id);
	}

	public int selectAllCount() {
		return mapper.selectAllCount();
	}

	public List<MessageDTO> rv_selectMessageList(HashMap<String, Object> map) {
		return mapper.rv_selectMessageList(map);
	}

	public List<MessageDTO> send_selectMessageList(HashMap<String, Object> map) {
		return mapper.send_selectMessageList(map);
	}
}
