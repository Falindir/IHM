
    create table Boards (
        id bigint not null auto_increment,
        access varchar(255),
        description varchar(255),
        name varchar(255),
        creator_id bigint,
        primary key (id)
    ) ENGINE=InnoDB;

    create table Groups (
        id bigint not null auto_increment,
        access varchar(255),
        description varchar(255),
        name varchar(255),
        admin_id bigint,
        primary key (id)
    ) ENGINE=InnoDB;

    create table TaskLists (
        id bigint not null auto_increment,
        name varchar(255),
        board bigint,
        primary key (id)
    ) ENGINE=InnoDB;

    create table Tasks (
        id bigint not null auto_increment,
        creation date,
        description varchar(255),
        dueDate date,
        name varchar(255),
        state integer,
        creator bigint,
        group_id bigint,
        tasklist bigint,
        primary key (id)
    ) ENGINE=InnoDB;

    create table Users (
        id bigint not null auto_increment,
        firstName varchar(255),
        lastName varchar(255),
        mail varchar(255),
        password varchar(255),
        primary key (id),
        unique (mail)
    ) ENGINE=InnoDB;

    create table WorkUser (
        hours double precision,
        task_id bigint,
        user_id bigint,
        primary key (task_id, user_id)
    ) ENGINE=InnoDB;

    create table board_users (
        id bigint not null,
        user_id bigint not null,
        primary key (id, user_id)
    ) ENGINE=InnoDB;

    create table group_users (
        group_id bigint not null,
        user_id bigint not null,
        primary key (group_id, user_id)
    ) ENGINE=InnoDB;

    alter table Boards 
        add index FK76E9DA6D4F7DBDC9 (creator_id), 
        add constraint FK76E9DA6D4F7DBDC9 
        foreign key (creator_id) 
        references Users (id);

    alter table Groups 
        add index FK7FA2C5F4C38343C6 (admin_id), 
        add constraint FK7FA2C5F4C38343C6 
        foreign key (admin_id) 
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

    alter table Tasks 
        add index FK4CD8B6EC8FB8B6A (group_id), 
        add constraint FK4CD8B6EC8FB8B6A 
        foreign key (group_id) 
        references Groups (id);

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

    alter table board_users 
        add index FKAE4A9B6FAA851A11 (id), 
        add constraint FKAE4A9B6FAA851A11 
        foreign key (id) 
        references Boards (id);

    alter table board_users 
        add index FKAE4A9B6FF481B9CA (user_id), 
        add constraint FKAE4A9B6FF481B9CA 
        foreign key (user_id) 
        references Users (id);

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
