package org.um2.taskboard.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.um2.taskboard.model.Board;
import org.um2.taskboard.model.Task;
import org.um2.taskboard.model.User;
import org.um2.taskboard.repository.BoardRepository;
import org.um2.taskboard.repository.TaskRepository;

@Service
public class TaskboardServiceImpl implements TaskboardService
{
	
	@Autowired
	BoardRepository bs;
	
	@Autowired
	TaskRepository tr;
	
	@Override
	public List<Board> findAllBoardsWithAdministrator(User administrator)
	{
		List<Board> bl = new ArrayList<>();
		for(Board b : bs.findAll())
		{
			if(b.getCreator().getId().equals(administrator.getId()))
				bl.add(b);
		}
		return bl;
	}
	
	@Override
	public List<Board> findAllBoardsWithMember(User user)
	{
		List<Board> bl = new ArrayList<>();
		for(Board b : bs.findAll())
		{
			if(b.getParticipants().contains(user))
				bl.add(b);
		}
		return bl;
	}
	
	@Override
	public Board findOneBoardById(long id)
	{
		return bs.findOne(id);
	}
	

	@Override
	public void createNewBoard(Board board)
	{
		bs.save(board);
	}

	@Override
	public void saveTask(Task task)
	{
		tr.save(task);
	}

	@Override
	public List<Board> findAllPublicBoards(User user)
	{
		List<Board> bl = new ArrayList<>();
		for(Board b : bs.findAll())
		{
			if(b.getAccess().equals("public"))
				bl.add(b);
		}
		return bl;
	}

	@Override
	public void testBoard()
	{
		// TODO Auto-generated method stub
		
	}
	
}
