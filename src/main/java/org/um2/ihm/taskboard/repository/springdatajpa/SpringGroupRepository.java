package org.um2.ihm.taskboard.repository.springdatajpa;

import org.um2.ihm.taskboard.model.Group;
import org.um2.ihm.taskboard.repository.GroupRepository;

/**
 * Created by BEUGNON on 15/11/2014.
 */
public interface SpringGroupRepository extends GroupRepository{

    @Override
    <S extends Group> S save(S entity);

    @Override
    <S extends Group> Iterable<S> save(Iterable<S> entities);

    @Override
    Group findOne(Long aLong);

    @Override
    boolean exists(Long aLong);

    @Override
    Iterable<Group> findAll();

    @Override
    Iterable<Group> findAll(Iterable<Long> longs);

    @Override
    long count();

    @Override
    void delete(Long aLong);

    @Override
    void delete(Group entity);

    @Override
    void delete(Iterable<? extends Group> entities);

    @Override
    void deleteAll();
}
