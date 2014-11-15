package org.um2.ihm
        .taskboard.model;

import java.util.Collection;
import java.util.List;
import java.util.ArrayList;
import java.util.Set;

import javax.persistence.*;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

/**
 * 
 * @author jimmy Lopez
 *
 */

@Entity
@Table(name = "User",uniqueConstraints={@UniqueConstraint(columnNames="mail_user"),
        @UniqueConstraint(columnNames="mail_user")})
public class User extends BaseEntity implements UserDetails {

    @Column(name = "name_user")
    @NotEmpty
	private String name;
    
    @Column(name = "mail_user")
    @NotEmpty
	private String mail;
    
    @Column(name = "password_user")
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

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        List<Role> g=new ArrayList<Role>();
        Role gt = new Role();
        g.add(gt);
        return g;
    }

    public String getPassword() {
		return password;
	}

    @Override
    public String getUsername() {
        return this.name;
    }

    @Override
    public boolean isAccountNonExpired() {
        return false;
    }

    @Override
    public boolean isAccountNonLocked() {
        return false;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
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
}
