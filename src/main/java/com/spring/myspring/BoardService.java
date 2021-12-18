package com.spring.myspring;

import java.util.List;

public interface BoardService {
	public int insertBoard(BoardVO vo);
	public int deleteBoard(int id);
	public int updateBoard(BoardVO vo);
	public List<BoardVO> getBoardList();
	public BoardVO getBoard(int id);
}
