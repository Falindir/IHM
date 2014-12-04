package org.um2.taskboard.service;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.um2.taskboard.model.User;

/**
 * Created by BEUGNON on 15/11/2014.
 */


public interface UserService {
	@Transactional
    User findUserByName(String name) throws DataAccessException;
	
	@Transactional
    User findUserByMail(String name) throws DataAccessException;
}
