package org.um2.taskboard.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.NoRepositoryBean;
import org.um2.taskboard.model.BaseEntity;
/**
 * Created by BEUGNON on 15/11/2014.
 */
@NoRepositoryBean
public interface BaseEntityRepository<T extends BaseEntity> extends CrudRepository<T,Long>
{
    @Override
    <S extends T> S save(S entity);

    @Override
    <S extends T> Iterable<S> save(Iterable<S> entities);

    @Override
    T findOne(Long aLong);

    @Override
    boolean exists(Long aLong);

    @Override
    Iterable<T> findAll();

    @Override
    Iterable<T> findAll(Iterable<Long> longs);

    @Override
    long count();

    @Override
    void delete(Long aLong);

    @Override
    void delete(T entity);

    @Override
    void delete(Iterable<? extends T> entities);

    @Override
    void deleteAll();
}
