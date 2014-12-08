package org.um2.taskboard.model;

import java.util.Collection;
import java.util.List;
import java.util.ArrayList;
import java.util.Set;

import javax.persistence.*;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;

/**
 * 
 * @author jimmy Lopez
 *
 */

@Entity
@Table(name = "Users",uniqueConstraints={@UniqueConstraint(columnNames="mail"),
        @UniqueConstraint(columnNames="name")})
public class User extends BaseEntity implements UserDetails {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Column(name = "name")
    @NotEmpty
	private String name;
    
    @Column(name = "mail")
    @NotEmpty
	private String mail;
    
    @Column(name = "password")
    @NotEmpty
	private String password;
    
    @ManyToMany(fetch = FetchType.LAZY, mappedBy = "members")
    private Set<Group> groups;

    @ManyToMany(fetch = FetchType.LAZY, mappedBy = "participants")
    private Set<Board> boards;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "pk.user", cascade=CascadeType.ALL)
    private Set<WorkUser> works;

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

   
    public Collection<? extends GrantedAuthority> getAuthorities() {
        List<Role> g=new ArrayList<Role>();
        Role gt = new Role();
        g.add(gt);
        return g;
    }

    
    public String getPassword() {
		return password;
	}


    public String getUsername() {
        return this.name;
    }

    
    public boolean isAccountNonExpired() {
        return false;
    }

    
    public boolean isAccountNonLocked() {
        return false;
    }

    
    public boolean isCredentialsNonExpired() {
        return true;
    }

    
    public boolean isEnabled() {
        return true;
    }

    public void setPassword(String password) {
		this.password = password;
	}

	public Set<Group> getGroups() {
		return groups;
	}

	public void setGroups(Set<Group> groups) {
		this.groups = groups;
	}

	public Set<Board> getBoards() {
		return boards;
	}

	public void setBoards(Set<Board> boards) {
		this.boards = boards;
	}

	public Set<WorkUser> getWorks() {
		return works;
	}

	public void setWorks(Set<WorkUser> works) {
		this.works = works;
	}

	public void setUsername(String string)
	{
		this.name=string;
	}
}
