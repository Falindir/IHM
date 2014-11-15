package org.um2.ihm
        .taskboard.model;

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
@Table(name = "TaskList")
public class TaskList extends BaseEntity{
	
    @Column(name = "name_tasklist")
    @NotEmpty
	private String name;
        
    @ManyToOne
    @JoinColumn(name = "board_id")
    @NotEmpty
    private Board board;
    
    @OneToMany(fetch = FetchType.LAZY, mappedBy = "tasklist")
    private Set<Task> tasks;
    
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Board getBoard() {
		return board;
	}

	public void setBoard(Board board) {
		this.board = board;
	}

	public Set<Task> getTasks() {
		return tasks;
	}

	public void setTasks(Set<Task> tasks) {
		this.tasks = tasks;
	}
	
	
}
