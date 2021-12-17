package com.spring.myspring;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAOImpl implements BoardDAO{
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public int insertBoard(BoardVO vo) {
		System.out.println("insertBoard");
		return sqlSession.update("BoardDAO.insertBoard", vo);
	}
	
//	@Override
//	public int updateBoard(BoardVO vo) {
//		System.out.println("updateBoard");
//		return sqlSession.insert("BoardDAO.insertBoard", vo);
//	}

//	@Override
//	public int deleteBoard(int id) {
//		int result = sqlSession.delete("Board.deleteBoard", id);
//		return result;
//	}
	
	@Override
	public List<BoardVO> getBoardList() {
		System.out.println("getBoardList");
		List<BoardVO> list = sqlSession.selectList("BoardDAO.getBoardList");
		
		return list;
	}

}
