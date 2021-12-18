package com.spring.moviereview.myboard;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

public interface BoardDAO {
	public int insertBoard(BoardVO vo);
	public List<BoardVO> getBoardList();
	public int deleteBoard(int id);
	public int updateBoard(BoardVO vo);
	public BoardVO getBoard(int id);
}
