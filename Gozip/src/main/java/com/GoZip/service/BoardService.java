package com.GoZip.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import com.GoZip.dto.BoardDTO;
import com.GoZip.mapper.BoardMapper;

@Service
public class BoardService {
	private BoardMapper mapper;

	public BoardService(BoardMapper mapper) {
		this.mapper = mapper;
	}

	public List<BoardDTO> selectBoardList(int page) {
		return mapper.selectBoardList(page);
	}

	public int selectAllCount() {
		return mapper.selectAllCount();
	}

	public int insertBoard(BoardDTO boardDTO) {
		return mapper.insertBoard(boardDTO);
	}

	public BoardDTO selectBoard(int b_no) {
		return mapper.selectBoard(b_no);
	}

	public void addCount(int b_no) {
		mapper.addCount(b_no);
	}

	public void updateBoard(HashMap<String, Object> map) {
		mapper.updateBoard(map);
	}

	public void deleteBoard(int b_no) {
		mapper.deleteBoard(b_no);
	}

	public int insertBoardLike(HashMap<String, Object> map) {
		return mapper.insertBoardLike(map);
	}

	public void deleteBoardLike(HashMap<String, Object> map) {
		mapper.deleteBoardLike(map);
		
	}

	public int selectBoardLike(int b_no) {
		return mapper.selectBoardLike(b_no);
	}

	public int insertBoardHate(HashMap<String, Object> map) {
		return mapper.insertBoardHate(map);
	}

	public void deleteBoardHate(HashMap<String, Object> map) {
		mapper.deleteBoardHate(map);
	}

	public int selectBoardHate(int b_no) {
		return mapper.selectBoardHate(b_no);
	}

	public List<BoardDTO> selectSearchBoard(HashMap<String, String> map) {
		return mapper.selectSearchBoard(map);
	}
	
	
}





