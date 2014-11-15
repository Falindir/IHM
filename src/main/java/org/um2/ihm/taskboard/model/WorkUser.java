package org.um2.ihm
        .taskboard.model;

import org.hibernate.annotations.Type;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import java.lang.annotation.Annotation;

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

    @EmbeddedId
    private WorkUserId pk;
    @Column(name = "pseudo_user")
    @NotEmpty
    @Type(type = "double")
    private double hours;

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
