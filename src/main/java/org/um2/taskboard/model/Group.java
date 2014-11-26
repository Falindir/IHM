package org.um2.taskboard.model;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

/**
 * 
 * @author jimmy Lopez
 *
 */

@Entity
@Table(name = "Groups")
public class Group extends BaseEntity
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Column(name = "name")
	@NotEmpty
	private String name;
	
	@Column(name = "description")
	private String description;
	
	@Column(name = "admin")
	@NotEmpty
	private User admin;
	
	@Column(name = "access")
	@NotEmpty
	private String access;
	
	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "group_users", 
	joinColumns = @JoinColumn(name = "group_id"), 
	inverseJoinColumns = @JoinColumn(name = "user_id"))
	private Set<User> members;
	
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
	
	public User getAdmin()
	{
		return admin;
	}
	
	public void setAdmin(User admin)
	{
		this.admin = admin;
	}
	
	public Set<User> getMembers()
	{
		return members;
	}
	
	public void addMember(User u)
	{
		if (!this.getMembers().contains(u))
			this.getMembers().add(u);
	}
	
	public void deleteMember(User u)
	{
		if (this.getMembers().contains(u))
			this.getMembers().remove(u);
	}
	
	public String getAccess()
	{
		return access;
	}
	
	public void setAccess(String access)
	{
		this.access = access;
	}
	
}
