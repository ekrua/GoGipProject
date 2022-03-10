package com.GoZip.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.GoZip.dto.BoardDTO;

@Mapper	
public interface BoardMapper {

	List<BoardDTO> selectBoardList(int page);

	int selectAllCount();

	int insertBoard(BoardDTO boardDTO);

	BoardDTO selectBoard(int b_no);

	void addCount(int b_no);

	void updateBoard(HashMap<String, Object> map);

	void deleteBoard(int b_no);

	int insertBoardLike(HashMap<String, Object> map);

	void deleteBoardLike(HashMap<String, Object> map);

	int selectBoardLike(int b_no);

	int insertBoardHate(HashMap<String, Object> map);

	void deleteBoardHate(HashMap<String, Object> map);

	int selectBoardHate(int b_no);

	List<BoardDTO> selectSearchBoard(HashMap<String, String> map);

}
