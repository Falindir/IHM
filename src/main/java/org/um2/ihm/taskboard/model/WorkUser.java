package org.um2.taskboard.model;

import javax.persistence.AssociationOverride;
import javax.persistence.AssociationOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.Type;
import org.hibernate.validator.constraints.NotEmpty;

/**
 * 
 * @author jimmy Lopez
 *
 */

@Entity
@Table(name = "WorkUser")
@AssociationOverrides({
        @AssociationOverride(name = "pk.user",
                joinColumns = @JoinColumn(name = "user_id")),
        @AssociationOverride(name = "pk.task",
                joinColumns = @JoinColumn(name = "task_id")) })
public class WorkUser implements  java.io.Serializable {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@EmbeddedId
    private WorkUserId pk;
	
    @Column(name = "hours")
    @NotEmpty
    @Type(type = "double")
    private double hours;

    public WorkUser(Task task, User worker)
	{
		this.setPK(new WorkUserId(task, worker));
		this.setHours(0);
	}

	public WorkUserId getPK()
    {
        return this.pk;
    }

    public void setPK(WorkUserId pk)
    {
        this.pk=pk;
    }

    @Transient
    public User getUser()
    {
        return getPK().getUser();
    }

    @Transient
    public Task getTask()
    {
        return getPK().getTask();
    }

    public void setHours(double d)
    {
        this.hours = d;
    }

    public double getHours()
    {
        return this.hours;
    }


}
