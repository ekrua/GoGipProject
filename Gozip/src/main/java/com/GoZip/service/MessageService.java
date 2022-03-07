package com.GoZip.service;

import org.springframework.stereotype.Service;

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

	public MessageDTO selectId(String rv_id) {
		return mapper.selectId(rv_id);
	}
}
