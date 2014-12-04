package org.um2.taskboard.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;
import org.um2.taskboard.model.Board;
import org.um2.taskboard.model.User;


public interface TaskboardService
{
	@Transactional
	List<Board> findAllBoardWithAdministrator(User administrator);
	@Transactional
	List<Board> findAllBoardWithMember(User user);
	
	@Transactional
	Board findOneBoardById(long id);
	
}
