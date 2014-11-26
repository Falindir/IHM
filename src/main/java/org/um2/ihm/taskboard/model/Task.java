package org.um2.taskboard.model;

import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.validator.constraints.NotEmpty;

/**
 * 
 * @author jimmy Lopez
 *
 */

@Entity
@Table(name = "Tasks")
public class Task extends BaseEntity
{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Column(name = "name")
	@NotEmpty
	private String name;
	
	@Column(name = "description")
	// @NotEmpty TODO à verif si peut être empty
	private String description;
	
	// TODO passer en enum et valeur par default
	@Column(name = "state")
	@NotEmpty
	private String state;
	
	private Group group;
	
	@ManyToOne
	@JoinColumn(name = "creator")
	private User creator;
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "pk.task", cascade = CascadeType.ALL)
	private Set<WorkUser> works;
	
	@ManyToOne
	@JoinColumn(name = "tasklist")
	private TaskList tasklist;
	
	@Column(name = "creation")
	@Temporal(TemporalType.DATE)
	private Date creationDate;
	
	@Column(name = "dueDate")
	@NotEmpty
	@Temporal(TemporalType.DATE)
	private Date dueDate;

	public String getName()
	{
		return name;
	}

	public void setName(String name)
	{
		this.name = name;
	}

	public String getDescription()
	{
		return description;
	}

	public void setDescription(String description)
	{
		this.description = description;
	}

	public String getState()
	{
		return state;
	}

	public void setState(String state)
	{
		this.state = state;
	}

	public Group getGroup()
	{
		return group;
	}

	public void setGroup(Group group)
	{
		this.group = group;
	}

	public User getCreator()
	{
		return creator;
	}

	public void setCreator(User creator)
	{
		this.creator = creator;
	}

	public Set<WorkUser> getWorks()
	{
		return works;
	}

	public void addWork(User worker)
	{
		this.works.add(new WorkUser(this,worker));
	}

	public TaskList getTasklist()
	{
		return tasklist;
	}

	public void setTasklist(TaskList tasklist)
	{
		this.tasklist = tasklist;
	}

	public Date getCreationDate()
	{
		return creationDate;
	}

	public void setCreationDate(Date creationDate)
	{
		this.creationDate = creationDate;
	}

	public Date getDueDate()
	{
		return dueDate;
	}

	public void setDueDate(Date dueDate)
	{
		this.dueDate = dueDate;
	}
	
	
	
}
