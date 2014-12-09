
    alter table Boards 
        drop 
        foreign key FK76E9DA6D4F7DBDC9;

    alter table TaskLists 
        drop 
        foreign key FK812A08F0B01DFBDC;

    alter table Tasks 
        drop 
        foreign key FK4CD8B6E611356;

    alter table Tasks 
        drop 
        foreign key FK4CD8B6E3A954BE7;

    alter table WorkUser 
        drop 
        foreign key FK5EE9A9CF481B9CA;

    alter table WorkUser 
        drop 
        foreign key FK5EE9A9CA1A5A78A;

    alter table group_users 
        drop 
        foreign key FK41CACC48F481B9CA;

    alter table group_users 
        drop 
        foreign key FK41CACC48C8FB8B6A;

    alter table users 
        drop 
        foreign key FK6A68E08AA851A11;

    alter table users 
        drop 
        foreign key FK6A68E08F481B9CA;

    drop table if exists Boards;

    drop table if exists Groups;

    drop table if exists TaskLists;

    drop table if exists Tasks;

    drop table if exists Users;

    drop table if exists WorkUser;

    drop table if exists group_users;

    drop table if exists users;

    create table Boards (
        id bigint not null auto_increment,
        access varchar(255),
        description varchar(255),
        name varchar(255),
        creator_id bigint,
        primary key (id)
    );

    create table Groups (
        id bigint not null auto_increment,
        access varchar(255),
        admin tinyblob,
        description varchar(255),
        name varchar(255),
        primary key (id)
    );

    create table TaskLists (
        id bigint not null auto_increment,
        name varchar(255),
        board bigint,
        primary key (id)
    );

    create table Tasks (
        id bigint not null auto_increment,
        creation date,
        description varchar(255),
        dueDate date,
        group tinyblob,
        name varchar(255),
        state integer,
        creator bigint,
        tasklist bigint,
        primary key (id)
    );

    create table Users (
        id bigint not null auto_increment,
        mail varchar(255),
        name varchar(255),
        password varchar(255),
        primary key (id),
        unique (name),
        unique (mail)
    );

    create table WorkUser (
        hours double precision,
        task_id bigint,
        user_id bigint,
        primary key (task_id, user_id)
    );

    create table group_users (
        group_id bigint not null,
        user_id bigint not null,
        primary key (group_id, user_id)
    );

    create table users (
        id bigint not null,
        user_id bigint not null,
        primary key (id, user_id)
    );

    alter table Boards 
        add index FK76E9DA6D4F7DBDC9 (creator_id), 
        add constraint FK76E9DA6D4F7DBDC9 
        foreign key (creator_id) 
        references Users (id);

    alter table TaskLists 
        add index FK812A08F0B01DFBDC (board), 
        add constraint FK812A08F0B01DFBDC 
        foreign key (board) 
        references Boards (id);

    alter table Tasks 
        add index FK4CD8B6E611356 (tasklist), 
        add constraint FK4CD8B6E611356 
        foreign key (tasklist) 
        references TaskLists (id);

    alter table Tasks 
        add index FK4CD8B6E3A954BE7 (creator), 
        add constraint FK4CD8B6E3A954BE7 
        foreign key (creator) 
        references Users (id);

    alter table WorkUser 
        add index FK5EE9A9CF481B9CA (user_id), 
        add constraint FK5EE9A9CF481B9CA 
        foreign key (user_id) 
        references Users (id);

    alter table WorkUser 
        add index FK5EE9A9CA1A5A78A (task_id), 
        add constraint FK5EE9A9CA1A5A78A 
        foreign key (task_id) 
        references Tasks (id);

    alter table group_users 
        add index FK41CACC48F481B9CA (user_id), 
        add constraint FK41CACC48F481B9CA 
        foreign key (user_id) 
        references Users (id);

    alter table group_users 
        add index FK41CACC48C8FB8B6A (group_id), 
        add constraint FK41CACC48C8FB8B6A 
        foreign key (group_id) 
        references Groups (id);

    alter table users 
        add index FK6A68E08AA851A11 (id), 
        add constraint FK6A68E08AA851A11 
        foreign key (id) 
        references Boards (id);

    alter table users 
        add index FK6A68E08F481B9CA (user_id), 
        add constraint FK6A68E08F481B9CA 
        foreign key (user_id) 
        references Users (id);
