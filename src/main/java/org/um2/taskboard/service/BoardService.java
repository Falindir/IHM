package org.um2.taskboard.service;

import java.util.List;

import org.um2.taskboard.model.Board;
import org.um2.taskboard.model.User;

public interface BoardService
{
	
	List<Board> findAllBoardWithAdministrator(User administrator);
	List<Board> findAllBoardWithMember(User user);
	Board findOneBoardById(long id);
	
}
