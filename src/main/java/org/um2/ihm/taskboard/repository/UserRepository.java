package org.um2.ihm.taskboard.repository;

/**
 * Created by BEUGNON on 15/11/2014.
 */
import org.um2.ihm.taskboard.model.User;

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

    <S extends User> S findByName(String username);

    <S extends User> S findByMail(String mail);

    <S extends User> S findByNameAndPassword(String username, String password);

    <S extends User> S findByMailAndPassword(String mail, String password);
}
