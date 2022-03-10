package com.GoZip.service;

import java.util.HashMap;

import org.apache.ibatis.type.Alias;
import org.springframework.stereotype.Service;

import com.GoZip.dto.MemberDTO;
import com.GoZip.mapper.MemberMapper;

@Service
@Alias("member")
public class MemberService {
	private MemberMapper mapper;
	public MemberService(MemberMapper mapper) {
		this.mapper = mapper;
	}
	public MemberDTO login(String id, String pw) {
		HashMap<String , String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pw", pw);
		
		return mapper.login(map);
	}
	public int insertMember(MemberDTO memberDTO) {
		return mapper.insertMember(memberDTO);
	}
	public int updateMember(MemberDTO memberDTO) {
		return mapper.updateMember(memberDTO);
	}
	public int idCheck(String id) {
		return mapper.idCheck(id);
	}
	
}




