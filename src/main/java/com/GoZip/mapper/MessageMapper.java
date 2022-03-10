package com.GoZip.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.GoZip.dto.MemberDTO;
import com.GoZip.dto.MessageDTO;

@Mapper
public interface MessageMapper {

	void writeMessage(MessageDTO messageDTO);

	MemberDTO selectId(String rv_id);

	int selectAllCount();

	List<MessageDTO> send_selectMessageList(HashMap<String, Object> map);

	List<MessageDTO> rv_selectMessageList(HashMap<String, Object> map);

}
