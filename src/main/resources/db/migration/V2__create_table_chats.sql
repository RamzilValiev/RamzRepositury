/*
create table if not exists chats
(
    id   bigint generated by default as identity primary key,
    name_chat varchar unique not null,
    user_name varchar not null references users (user_name),
    created_at timestamp not null
);*/
create table if not exists chats
(
    id   bigint generated by default as identity primary key,
    name_chat varchar unique not null,
    created_at timestamp not null
);

create table if not exists chats_users
(
id bigint generated by default as identity primary key,
chat_id bigint references chats(id),
user_id bigint references users(id)
);