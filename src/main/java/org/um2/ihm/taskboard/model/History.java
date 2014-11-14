package org.springframework.samples.petclinic.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * 
 * @author jimmy Lopez
 *
 */

@Entity
@Table(name = "History")
public class History extends BaseEntity{
	
    @Column(name = "description_task")
    //@NotEmpty TODO à verif si peut être empty
	private String description;

}
