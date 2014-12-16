package org.um2.taskboard.repository;

import org.springframework.data.repository.CrudRepository;
import org.um2.taskboard.model.WorkUser;
import org.um2.taskboard.model.WorkUserId;

public interface WorkUserRepository extends CrudRepository<WorkUser,WorkUserId>
{
	
}
