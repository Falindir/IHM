package org.um2.taskboard.web.controllers;

import java.util.ArrayList;
import java.util.HashSet;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.um2.taskboard.model.Board;
import org.um2.taskboard.model.TaskList;
import org.um2.taskboard.model.User;

@Controller
@SessionAttributes(value = "user", types = User.class)
@RequestMapping("/board/*")
public class BoardController
{
	
	// BoardService bs;
	
	@RequestMapping("/")
	public ModelAndView index(HttpServletRequest request)
	{
		// User u = (User) request.getSession().getAttribute("user");
		ModelAndView mav = new ModelAndView("board/index");
		// List<Board> list = bs.findAllBoardWithAdministrator(u);
		
		// mav.addObject("adminBoards", list);
		return mav;
	}
	
	// TODO A REFAIRE
	@RequestMapping("/show/{id}")
	public ModelAndView showBoard(@PathVariable(value = "id") String idString,
			HttpServletRequest request)
	{
		try
		{
			long id = Long.parseLong(idString);
		} catch (NumberFormatException e)
		{
			//TODO ERREUR 
		}
		ModelAndView mav;
		Board b = new Board();
		b.setAccess("PUBLIC");
		b.setDescription("toto");
		b.setName("TEST");
		User u = new User();
		u.setUsername("Toto Toto");
		b.setCreator(u);
		mav = new ModelAndView("board/show");
		mav.addObject("board", b);
		mav.addObject("id", idString);
		return mav;
	}
	
	/**
	 * Pour tester à la volée l'affichage d'un board
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("/test")
	public ModelAndView test(HttpServletRequest request)
	{
		ModelAndView mav;
		Board b = new Board();
		b.setAccess("PUBLIC");
		b.setDescription("toto");
		b.setName("TEST");
		User u = new User();
		
		u.setUsername("Toto Toto");
		b.setCreator(u);
		b.setParticipants(new HashSet<User>());
		b.setTaskLists(new ArrayList<TaskList>());
		mav = new ModelAndView("board/show");
		TaskList tl = new TaskList();
		tl.setBoard(b);
		tl.setName("toto1");
		b.addTasklist(tl);
		tl = new TaskList();
		tl.setBoard(b);
		tl.setName("toto2");
		b.addTasklist(tl);
		mav.addObject("board", b);
		mav.addObject("id", -1);
		return mav;
	}
	
	/*
	 * @RequestMapping("/show/{id}") public ModelAndView
	 * showBoard2(@RequestParam long id,HttpServletRequest request) {
	 * ModelAndView mav; User u = (User)
	 * request.getSession().getAttribute("user"); Board b =
	 * bs.findOneBoardById(id); if(b!=null) { if(b.getCreator().equals(u) ||
	 * b.getParticipants().contains(u) || b.getAccess().equals("PUBLIC")) {
	 * mav=new ModelAndView("board/show"); mav.addObject("board", b); } else {
	 * mav= new ModelAndView("redirect:/board/"); mav.addObject("message", new
	 * String("You don't have acces to this board.")); } } else { mav = new
	 * ModelAndView("redirect:/board/"); mav.addObject("message", new
	 * String("This board doesn't exist !")); }
	 * 
	 * 
	 * return mav;
	 * 
	 * }
	 */
}
