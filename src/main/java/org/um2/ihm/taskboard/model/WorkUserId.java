package org.um2.ihm.taskboard.model;

import javax.persistence.Embeddable;
import javax.persistence.ManyToOne;

/**
 * Created by BEUGNON on 15/11/2014.
 */
@Embeddable
public class WorkUserId implements java.io.Serializable {


    @ManyToOne
    private User user;
    @ManyToOne
    private Task task;


    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Task getTask() {
        return task;
    }

    public void setTask(Task task) {
        this.task = task;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        WorkUserId that = (WorkUserId) o;

        if (task != null ? !task.equals(that.task) : that.task != null) return false;
        if (user != null ? !user.equals(that.user) : that.user != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = user != null ? user.hashCode() : 0;
        result = 31 * result + (task != null ? task.hashCode() : 0);
        return result;
    }
}
