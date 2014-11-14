package org.springframework.samples.petclinic.model;

import java.util.Date;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Type;
import org.hibernate.validator.constraints.NotEmpty;
import org.joda.time.DateTime;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * 
 * @author jimmy Lopez
 *
 */

@Entity
@Table(name = "Task")
public class Task extends BaseEntity{

    @Column(name = "name_task")
    @NotEmpty
	private String name;
    
    @Column(name = "description_task")
    //@NotEmpty TODO à verif si peut être empty
	private String description;
    
    //TODO passer en enum et valeur par default 
    @Column(name = "etat_task")
    @NotEmpty
    private String etat;
    
    private Group group;
    
    private User creator;
     
    private Set<History> history;
    
    private Set<History> worker;
    
    @ManyToOne
    @JoinColumn(name = "tasklist_id")
    private TaskList tasklist;
        
    @Column(name = "creation_task")
    @Type(type = "org.jadira.usertype.dateandtime.joda.PersistentDateTime")
    @DateTimeFormat(pattern = "yyyy/MM/dd")
    private DateTime dreationDate;
    
    @Column(name = "task_dueDate")
    @NotEmpty
    @DateTimeFormat(pattern = "yyyy/MM/dd")
    private DateTime dueDate;
    
    @Column(name = "task_dueDate")
    @DateTimeFormat(pattern = "yyyy/MM/dd")
    private DateTime endDate;

    
    
    
    
}
