package org.um2.taskboard.repository.springdatajpa;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.um2.taskboard.model.User;
import org.um2.taskboard.repository.UserRepository;

/**
 * Created by BEUGNON on 15/11/2014.
 */
public interface SpringUserRepository extends UserRepository
{
    @Override
    <S extends User> S save(S user);

    @Override
    <S extends User> Iterable<S> save(Iterable<S> users);

    @Override
    User findOne(Long id);

    @Override
    boolean exists(Long id);

    @Override
    Iterable<User> findAll();

    @Override
    Iterable<User> findAll(Iterable<Long> ids);

    @Override
    long count();

    @Override
    void delete(Long aLong);

    @Override
    void delete(User entity);

    @Override
    void delete(Iterable<? extends User> entities);

    @Override
    void deleteAll();


}
