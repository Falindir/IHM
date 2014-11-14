package org.springframework.samples.petclinic.model;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

/**
 * 
 * @author jimmy Lopez
 *
 */

@Entity
@Table(name = "Board")
public class Board extends BaseEntity {
	
    @Column(name = "name_board")
    @NotEmpty
	private String name;
    
    //TODO passer en enum et valeur par default public
    @Column(name = "access_board")
    @NotEmpty
    private String access;
    
    @Column(name = "description_board")
    //@NotEmpty TODO à verif si peut être empty
	private String description;
    
    @OneToMany(fetch = FetchType.LAZY, mappedBy = "board")
    private Set<TaskList> taskLists;
    
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "board_users", joinColumns = @JoinColumn(name = "board_id"),
    inverseJoinColumns = @JoinColumn(name = "user_id"))
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
	public Set<TaskList> getTaskLists() {
		return taskLists;
	}

	public void setTaskLists(Set<TaskList> taskLists) {
		this.taskLists = taskLists;
	}

	public Set<User> getParticipants() {
		return participants;
	}

	public void setParticipants(Set<User> participants) {
		this.participants = participants;
	}
	
	
    
}
