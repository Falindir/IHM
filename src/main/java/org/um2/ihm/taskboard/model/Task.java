package org.um2.ihm
        .taskboard.model;

import java.util.Date;
import java.util.Set;

import javax.persistence.*;

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

    @ManyToOne
    @JoinColumn(name="user_id")
    private User creator;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "pk.task", cascade=CascadeType.ALL)
    private Set<WorkUser> works;
    
    @ManyToOne
    @JoinColumn(name = "tasklist_id")
    private TaskList tasklist;
        
    @Column(name = "creation_task")
    @Temporal(TemporalType.DATE)
    private Date creationDate;
    
    @Column(name = "task_dueDate")
    @NotEmpty
    @Temporal(TemporalType.DATE)
    private Date dueDate;
    
    
}
