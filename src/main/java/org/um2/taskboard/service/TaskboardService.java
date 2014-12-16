package org.um2.taskboard.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;
import org.um2.taskboard.model.Board;
import org.um2.taskboard.model.Task;
import org.um2.taskboard.model.User;


public interface TaskboardService
{
	@Transactional
	List<Board> findAllBoardsWithAdministrator(User administrator);
	@Transactional
	List<Board> findAllBoardsWithMember(User user);
	
	@Transactional
	List<Board> findAllPublicBoards(User user);
	
	@Transactional
	Board findOneBoardById(long id);
	
	
	@Transactional
	void createNewBoard(Board board);
	
	@Transactional
	void saveTask(Task task);
	
	@Transactional
	void testBoard();
	
}
