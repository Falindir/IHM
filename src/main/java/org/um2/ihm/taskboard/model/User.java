package org.springframework.samples.petclinic.model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
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
@Table(name = "User")
public class User extends BaseEntity{

    @Column(name = "pseudo_user")
    @NotEmpty
	private String pseudo;
    
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
    
    @OneToMany(fetch = FetchType.LAZY, mappedBy = "actionUser")
    private Set<History> historys;
    
    @OneToMany(fetch = FetchType.LAZY, mappedBy = "tempTravel")
    private Set<WorkUser> works;

	public String getPseudo() {
		return pseudo;
	}

	public void setPseudo(String pseudo) {
		this.pseudo = pseudo;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getPassword() {
		return password;
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

	public Set<History> getHistorys() {
		return historys;
	}

	public void setHistorys(Set<History> historys) {
		this.historys = historys;
	}

	public Set<WorkUser> getWorks() {
		return works;
	}

	public void setWorks(Set<WorkUser> works) {
		this.works = works;
	}
}
