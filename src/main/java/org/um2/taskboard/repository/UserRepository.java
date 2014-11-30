package org.um2.taskboard.repository;

import org.springframework.stereotype.Repository;
/**
 * Created by BEUGNON on 15/11/2014.
 */
import org.um2.taskboard.model.User;

@Repository
public interface UserRepository extends BaseEntityRepository<User>
{
    @Override
    <S extends User> S save(S entity);

    @Override
    <S extends User> Iterable<S> save(Iterable<S> entities);

    @Override
    User findOne(Long aLong);

    @Override
    boolean exists(Long aLong);

    @Override
    Iterable<User> findAll();

    @Override
    Iterable<User> findAll(Iterable<Long> longs);

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
