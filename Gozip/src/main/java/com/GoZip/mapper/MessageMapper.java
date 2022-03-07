package com.GoZip.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.GoZip.dto.MessageDTO;

@Mapper
public interface MessageMapper {

	void writeMessage(MessageDTO messageDTO);

	MessageDTO selectId(String rv_id);

}
