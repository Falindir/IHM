package org.um2.taskboard.web.controllers;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.um2.taskboard.model.Board;
import org.um2.taskboard.model.Task;
import org.um2.taskboard.model.TaskList;
import org.um2.taskboard.model.TaskState;
import org.um2.taskboard.model.User;
import org.um2.taskboard.service.TaskboardService;
import org.um2.taskboard.service.UserService;

@Controller
@SessionAttributes(value = "user", types = User.class)
@RequestMapping("/board/*")
public class BoardController
{
	
	@Autowired
	UserService us;
	
	@Autowired
	TaskboardService bs;

	
	@RequestMapping("/")
	public ModelAndView index(HttpServletRequest request)
	{
		ModelAndView mav = new ModelAndView("board/index");
		if(request.getSession().getAttribute("user")==null)
		{
			mav.setViewName("redirect:/");
			mav.addObject("alert", "Not connected !");
			return mav;
		}
		User u = (User) request.getSession().getAttribute("user");
		us.saveUser(u);
			
			
		mav.addObject("adminBoards", bs.findAllBoardsWithAdministrator(u));
		mav.addObject("boards", bs.findAllBoardsWithMember(u));
		return mav;
	}
	
	
	@RequestMapping(value="/create",method=RequestMethod.POST)
	public ModelAndView create(HttpServletRequest request,
			@RequestParam(value="name",required=true) String name,
			@RequestParam(value="description",required=true) String description,
			@RequestParam(value="access",required=true) String access
			)
	{
		ModelAndView mav = new ModelAndView();
		if(request.getSession().getAttribute("user")==null)
		{
			mav.setViewName("redirect:/");
			mav.addObject("alert", "Not connected !");
			return mav;
		}
		User u = (User)request.getSession().getAttribute("user");
		Board board = new Board();
		board.setAccess("public");
		board.setCreator(u);
		board.setDescription(description);
		board.setName(name);
	
	
		bs.createNewBoard(board);
		
		
		mav = new ModelAndView("redirect:/board/show/"+board.getId());	
		return mav;
	}
	
	// TODO A REFAIRE
	@RequestMapping("/show/{id}")
	public ModelAndView showBoard(@PathVariable(value = "id") String idString,
			HttpServletRequest request)
	{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/");
		if(request.getSession().getAttribute("user")==null)
			return mav;
		
		User u  = (User) request.getSession().getAttribute("user");
		
		
		
		mav.setViewName("redirect:/board/");
		long id=0;
		if(idString!=null)
		{
		try
		{
			 id = Long.parseLong(idString);
			 Board b = bs.findOneBoardById(id);
			 if(b!=null)
			 {
				
				if(b.getAccess().equals("public")
						||b.getCreator().equals(u) || b.getParticipants().contains(u))
				{
					 mav = new ModelAndView("board/show");
					 mav.addObject("board", b);
					mav.addObject("id", idString);
				}
				else
				{
					mav.addObject("alert","Not the right to go on this board");
				}
				
				
				
			 }
			 else
			 {
				mav.addObject("alert", "Board doesn't exist !");
			 }
		} catch (NumberFormatException e)
		{
			mav.addObject("alert", "Board doesn't exist !");

		}
		}

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
		mav = new ModelAndView("board/show");

		Board b = new Board();
		b.setAccess("public");
		b.setDescription("toto");
		b.setName("TEST");
		User u = new User();
		
		u.setUsername("Toto Toto");
		b.setCreator(u);
		b.setParticipants(new HashSet<User>());
		b.setTaskLists(new ArrayList<TaskList>());
		

		TaskList tl = new TaskList();
		tl.setBoard(b);
		tl.setName("Scénario2");
		tl.setTasks(new ArrayList<Task>());

		Task task = new Task();
		
		task.setName("Produire Scénario 101");
		task.setCreator(u);
		task.setCreationDate(new Date());
		task.setDescription("Il faut réaliser un scénario pour le taskboard (voir le board)");
		task.setState(TaskState.LATE);
		//+3 jours
		Date due = new Date(task.getCreationDate().getTime()+3600*24*3);
		task.setDueDate(due);
		task.setTasklist(tl);
		tl.addTask(task);
		task = new Task();
		
		task.setName("Produire Scénario 2");
		task.setCreator(u);
		task.setCreationDate(new Date());
		task.setDescription("Il faut réaliser un scénario pour le taskboard (voir le bilan)");
		task.setState(TaskState.DONE);
		//+3 jours
		due = new Date(task.getCreationDate().getTime()+3600*24*3);
		task.setDueDate(due);
		task.setTasklist(tl);
		tl.addTask(task);
		
		b.addTasklist(tl);
		
		tl = new TaskList();
		tl.setBoard(b);
		tl.setName("Storyboard");

		tl.setTasks(new ArrayList<Task>());
		task = new Task();
		task.setName("Storyboard - Afficher le Bilan");
		task.setCreator(u);
		task.setCreationDate(new Date());
		task.setDescription("Faire un storyboard pour afficher le bilan");
		task.setState(TaskState.DONE);
		//+3 jours
		due = new Date(task.getCreationDate().getTime()+3600*24*3);
		task.setDueDate(due);
		task.setTasklist(tl);
		tl.addTask(task);
		
		b.addTasklist(tl);

		tl = new TaskList();
		tl.setBoard(b);
		tl.setName("Maquette");

		b.addTasklist(tl);

		tl = new TaskList();
		tl.setBoard(b);
		tl.setName("Evaluation");


		b.addTasklist(tl);

		tl = new TaskList();
		tl.setBoard(b);
		tl.setName("Présentation");

		b.addTasklist(tl);

		mav.addObject("board", b);
		mav.addObject("id", -1);
		return mav;
	}
	

	    @RequestMapping("/bilan")
        public ModelAndView bilan(HttpServletRequest request) {
 
            ModelAndView mav = new ModelAndView("profil/bilan");

            return mav;
        }

}
