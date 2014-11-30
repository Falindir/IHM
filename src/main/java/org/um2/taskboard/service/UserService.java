package org.um2.taskboard.service;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.um2.taskboard.model.User;

/**
 * Created by BEUGNON on 15/11/2014.
 */


public interface UserService {
    User findUserByName(String name) throws DataAccessException;
    
}
