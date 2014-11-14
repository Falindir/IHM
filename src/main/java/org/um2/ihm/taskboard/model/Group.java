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
@Table(name = "Group")
public class Group extends BaseEntity{
	
    @Column(name = "name_group")
    @NotEmpty
	private String name;
    
    @Column(name = "description_group")
	private String description;
   
	@Column(name = "admin_group")
    @NotEmpty
	private User admin;
    
    //TODO passer en enum et valeur par default public
    @Column(name = "access_group")
    //@Enumerated(EnumACCESS.STRING)
    private String access;
    
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "group_users", joinColumns = @JoinColumn(name = "group_id"),
    inverseJoinColumns = @JoinColumn(name = "user_id"))
    private Set<User> members;
    
    
 
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public User getAdmin() {
		return admin;
	}

	public void setAdmin(User admin) {
		this.admin = admin;
	}
	
	public Set<User> getMembers() {
		return members;
	}

	public User getMember() {
		//TODO 
		return null;
	}
	
	public void addMember(User u) {
		//TODO
	}
	
	public void deleteMember(User U) {
		//TODO
	}
	/*
	public void setMembers(Collection<User> members) {
		this.members = members;
	}
	*/
	
    public String getAccess() {
		return access;
	}

	public void setAccess(String access) {
		this.access = access;
	}
	

    
}
