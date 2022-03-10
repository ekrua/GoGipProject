package com.GoZip.mapper;

import java.util.HashMap;
import org.apache.ibatis.annotations.Mapper;
import com.GoZip.dto.MemberDTO;

@Mapper
public interface MemberMapper {
	MemberDTO login(HashMap<String, String> map);
	int insertMember(MemberDTO memberDTO);
	int updateMember(MemberDTO memberDTO);
	int idCheck(String id);
}
