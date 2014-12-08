package org.um2.taskboard.service;

import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.um2.taskboard.model.Board;
import org.um2.taskboard.model.User;

@Service
public class TaskboardServiceImpl implements TaskboardService
{
	
	@Override
	public List<Board> findAllBoardWithAdministrator(User administrator)
	{
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public List<Board> findAllBoardWithMember(User user)
	{
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public Board findOneBoardById(long id)
	{
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public void addThisNewBoard(Board board) throws DataAccessException
	{
		
	}
	
}
