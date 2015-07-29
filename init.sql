use gists;
create table gists
(
        id int unsigned not null auto_increment primary key,
        title tinytext not null,
        description text,
        filetype tinytext not null,
        uid int not null,
        updated_at timestamp NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
);
