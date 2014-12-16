package org.um2.taskboard.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.um2.taskboard.model.User;
import org.um2.taskboard.repository.UserRepository;

/**
 * Created by BEUGNON on 15/11/2014.
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserRepository userRepository;



	@Override
	@Transactional
	public User findUserByMail(String mail) throws DataAccessException {
		
		return userRepository.findByMail(mail);
	}

	@Override
	public void saveUser(User u)
	{
		userRepository.save(u);
	}


	
	
}
