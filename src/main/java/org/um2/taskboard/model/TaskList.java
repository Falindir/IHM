package org.um2.taskboard.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

/**
 * 
 * @author jimmy Lopez
 *
 */

@Entity
@Table(name = "TaskLists")
public class TaskList extends BaseEntity
{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Column(name = "name")
	@NotEmpty
	private String name;
	
	@ManyToOne
	@JoinColumn(name = "board")
	@NotEmpty
	private Board board;
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "tasklist")
	private List<Task> tasks;
	
	public String getName()
	{
		return name;
	}
	
	public void setName(String name)
	{
		this.name = name;
	}
	
	public Board getBoard()
	{
		return board;
	}
	
	public void setBoard(Board board)
	{
		this.board = board;
	}
	
	public List<Task> getTasks()
	{
		return tasks;
	}
	
	public void addTask(Task task)
	{
		if (!getTasks().contains(task))
			getTasks().add(task);
	}
	
	public void removeTask(Task task)
	{
		if (getTasks().contains(task))
			getTasks().remove(task);
	}
	
	public void setTasks(List<Task> tasks)
	{
		this.tasks = tasks;
	}
	
}
