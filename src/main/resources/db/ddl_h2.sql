
    create table Boards (
        id bigint generated by default as identity,
        access varchar(255),
        description varchar(255),
        name varchar(255),
        creator_id bigint,
        primary key (id)
    );

    create table Groups (
        id bigint generated by default as identity,
        access varchar(255),
        description varchar(255),
        name varchar(255),
        admin_id bigint,
        primary key (id)
    );

    create table TaskLists (
        id bigint generated by default as identity,
        name varchar(255),
        board bigint,
        primary key (id)
    );

    create table Tasks (
        id bigint generated by default as identity,
        creation date,
        description varchar(255),
        dueDate date,
        name varchar(255),
        state integer,
        creator bigint,
        group_id bigint,
        tasklist bigint,
        primary key (id)
    );

    create table Users (
        id bigint generated by default as identity,
        firstName varchar(255),
        lastName varchar(255),
        mail varchar(255),
        password varchar(255),
        primary key (id),
        unique (mail)
    );

    create table WorkUser (
        hours double precision,
        task_id bigint,
        user_id bigint,
        primary key (task_id, user_id)
    );

    create table board_users (
        id bigint not null,
        user_id bigint not null,
        primary key (id, user_id)
    );

    create table group_users (
        group_id bigint not null,
        user_id bigint not null,
        primary key (group_id, user_id)
    );

    alter table Boards 
        add constraint FK76E9DA6D4F7DBDC9 
        foreign key (creator_id) 
        references Users;

    alter table Groups 
        add constraint FK7FA2C5F4C38343C6 
        foreign key (admin_id) 
        references Users;

    alter table TaskLists 
        add constraint FK812A08F0B01DFBDC 
        foreign key (board) 
        references Boards;

    alter table Tasks 
        add constraint FK4CD8B6E611356 
        foreign key (tasklist) 
        references TaskLists;

    alter table Tasks 
        add constraint FK4CD8B6E3A954BE7 
        foreign key (creator) 
        references Users;

    alter table Tasks 
        add constraint FK4CD8B6EC8FB8B6A 
        foreign key (group_id) 
        references Groups;

    alter table WorkUser 
        add constraint FK5EE9A9CF481B9CA 
        foreign key (user_id) 
        references Users;

    alter table WorkUser 
        add constraint FK5EE9A9CA1A5A78A 
        foreign key (task_id) 
        references Tasks;

    alter table board_users 
        add constraint FKAE4A9B6FAA851A11 
        foreign key (id) 
        references Boards;

    alter table board_users 
        add constraint FKAE4A9B6FF481B9CA 
        foreign key (user_id) 
        references Users;

    alter table group_users 
        add constraint FK41CACC48F481B9CA 
        foreign key (user_id) 
        references Users;

    alter table group_users 
        add constraint FK41CACC48C8FB8B6A 
        foreign key (group_id) 
        references Groups;
