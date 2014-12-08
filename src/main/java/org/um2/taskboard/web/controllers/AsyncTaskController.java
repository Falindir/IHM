package org.um2.taskboard.web.controllers;

import java.util.Date;

import org.springframework.scheduling.annotation.Async;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.um2.taskboard.model.Task;
import org.um2.taskboard.model.TaskState;
import org.um2.taskboard.model.User;

@RestController
@RequestMapping("/asyncs/*")
@SessionAttributes(value = "user", types = User.class)
@Async
public class AsyncTaskController
{
	
	
	
	@RequestMapping(value = "/tasks/get", method = RequestMethod.GET)
	public Task get(@RequestParam(value = "id", required = true) long id)
	{
		return new Task();
	}
	
	@RequestMapping(value = "/tasks/post", method = RequestMethod.POST)
	public Task post(
			@RequestParam(value = "title", required = true) String title,
			@RequestParam(value = "description", required = false, defaultValue = "") String descp,
			@RequestParam(value = "idTaskList", required = true) long idTasklist,
			@RequestParam(value = "dueDate", required = true) Date d)
	{
		
		
		return null;
	}
	
	public Task changeState(
			@RequestParam(value=" id",required=true) long idTask,
			@RequestParam(value="state", required=true) TaskState ts)
	{
		//LOAD TASK
		Task t = null;
		t.setState(ts);
		
		
		return t;
	}
	
	@RequestMapping(value="/tasks/test")
	public Task test()
	{
		return new Task();
	}
	
}
