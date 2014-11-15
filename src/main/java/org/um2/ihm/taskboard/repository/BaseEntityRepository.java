package org.um2.ihm.taskboard.repository;

import org.springframework.data.repository.CrudRepository;

import org.um2.ihm.taskboard.model.User;
/**
 * Created by BEUGNON on 15/11/2014.
 */
public interface BaseEntityRepository<T> extends CrudRepository<T,Long> {
}
