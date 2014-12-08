package org.um2.taskboard.model;

import java.util.List;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
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
@Table(name = "Boards")
public class Board extends BaseEntity {
	
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Column(name = "name")
    @NotEmpty
	private String name;
    
    @Column(name = "access")
    @NotEmpty
    private String access;
    
    @Column(name = "description")
    //@NotEmpty
	private String description;
    
    @ManyToOne(targetEntity=User.class)
    private User creator;
    
    
    @OneToMany(fetch = FetchType.LAZY, mappedBy = "board")
    private List<TaskList> taskLists;
    
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "users", joinColumns = 
    {@JoinColumn(name = "id")},
    inverseJoinColumns = 
    {@JoinColumn(name = "user_id")}
    )
    private Set<User> participants;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAccess() {
		return access;
	}

	public void setAccess(String access) {
		this.access = access;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	//TODO faire les bonnes métodes pour la gestion des collections de tasklist
	public List<TaskList> getTaskLists() {
		return taskLists;
	}

	public void addTasklist(TaskList ts)
	{
		if( !this.getTaskLists().contains(ts) )
			this.getTaskLists().add(ts);
	}
	
	public void removeTasklist(TaskList ts)
	{
		if( this.getTaskLists().contains(ts) )
			this.getTaskLists().remove(ts);
	}

	public Set<User> getParticipants() {
		return participants;
	}

	public void setParticipants(Set<User> participants) {
		this.participants = participants;
	}

	public User getCreator()
	{
		return this.creator;
	}
	
	public void setCreator(User user)
	{
		this.creator=user;
	}

	public void setTaskLists(List<TaskList> set)
	{
		this.taskLists=set;
	}
	
	
    
}
