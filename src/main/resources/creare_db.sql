-- create sequence hibernate_sequence start 5 increment 1;
--
-- create sequence message_seq start 10 increment 50
-- create sequence user_seq start 5 increment 50
--
-- create table message (
--     id int8 not null,
--     filename varchar(255),
--     tag varchar(255),
--     text varchar(2048) not null,
--     user_id int8,
--     primary key (id)
-- );
--
-- create table user_role (
--     user_id int8 not null,
--     roles varchar(255)
-- );
--
-- create table usr (
--     id int8 not null,
--     activation_code varchar(255),
--     active boolean not null,
--     email varchar(255),
--     password varchar(255) not null,
--     username varchar(255) not null,
--     primary key (id)
-- );
--
-- alter table if exists message
--     add constraint message_user_fk
--     foreign key (user_id) references usr;
--
-- alter table if exists user_role
--     add constraint user_role_user_fk
--     foreign key (user_id) references usr;
--
-- create table user_subscriptions (
--     channel_id int8 not null references usr,
--     subscriber_id int8 not null references usr,
--     primary key (channel_id, subscriber_id)
-- )
--
-- create table message_likes (
-- user_id bigint not null references usr,
-- message_id bigint not null references message,
-- primary key (user_id, message_id)
-- )