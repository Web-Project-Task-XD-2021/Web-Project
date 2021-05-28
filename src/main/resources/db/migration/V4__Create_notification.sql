create table notification
(
    id bigint auto_increment primary key not null,
    notifier bigint not null,
    reciever bigint not null,
    outerid bigint not null,
    type int not null,
    gmt_create bigint not null,
    status int default 0 not null,
    notifier_name varchar(100) not null,
    outer_title varchar(256) not null
);