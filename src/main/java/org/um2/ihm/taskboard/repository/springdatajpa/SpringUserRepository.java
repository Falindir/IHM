package org.um2.ihm.taskboard.repository.springdatajpa;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.um2.ihm.taskboard.model.User;
import org.um2.ihm.taskboard.repository.UserRepository;

/**
 * Created by BEUGNON on 15/11/2014.
 */
public interface SpringUserRepository extends UserRepository
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

    @Override
    @Query("SELECT user FROM User user WHERE user.name LIKE :username")
    <S extends User> S findByName(@Param("username")String username);

    @Override
    @Query("SELECT user FROM User user WHERE user.mail LIKE :mail")
    <S extends User> S findByMail(@Param("mail")String mail);

    @Override
    @Query("SELECT user FROM User user WHERE user.name LIKE :username% AND user.password LIKE :password")
    <S extends User> S findByNameAndPassword(@Param("username")String username, @Param("password") String password);

    @Override
    @Query("SELECT user FROM User user WHERE user.name LIKE :mail% AND user.password LIKE :password")
    <S extends User> S findByMailAndPassword(@Param("mail")String mail,@Param("password") String password);
}
