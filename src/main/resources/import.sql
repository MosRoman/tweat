insert into usr (id, username, password, active,email) values (1, 'Admin', '$2a$10$y3nKDWcXPJE5pXm5xfeZP.osdkokTeh9Fkc0TKl5pAy6X0tXQmCrK', true,'email');

insert into usr (id, username, password, active, email) values (2, 'Developer', '$2a$08$YOlpCtK9/3g3sAuV7K1zoOZdpK19zLoxI6lJ9.ueXJHlWTnOxkcNO', true, 'morovo1988@gmail.com');

insert into user_role (user_id, roles) values (1, 'USER'), (1, 'ADMIN');
insert into user_role (user_id, roles) values (2, 'USER'), (2, 'ADMIN');

insert into message(id, filename, tag, text, user_id) values (1, '23bf83cb-c1d7-4666-8a33-e8a777a16cfa.narciss_1600_1200.jpeg', 'flower','Some 1', 1);
insert into message(id, filename, tag, text, user_id) values (2, '485e1152-0cc0-4810-9ac1-c7842d759568.walls_1600x1200.jpeg', 'flower','Some 1', 1);
insert into message(id, filename, tag, text, user_id) values (3, '05404cb3-49b0-4c7d-90ae-c05eed4e453c.flowers_1600_12010.jpeg', 'flower','Some 1', 1);
insert into message(id, filename, tag, text, user_id) values (4, 'e288aae9-49db-46c0-87a0-59a4c99a8349.flowers_1600_1200.jpeg', 'flower','Some 1', 2);
insert into message(id, filename, tag, text, user_id) values (5, '6dd7c3fc-67bf-4387-bd7d-a8c48d3f5f6a.1284_5.jpg', 'winter','Some 1', 1);
insert into message(id, filename, tag, text, user_id) values (6, 'f5c459c7-c532-4b77-8879-98c90af4bf7d.forest_1a600_1200.jpeg', 'flower','Some 2', 1);
insert into message(id, filename, tag, text, user_id) values (7, '71c39fc4-0d5d-4b7a-a609-a2c10f3e6b49.1283_5.jpg', 'winter','Some 1', 1);
insert into message(id, filename, tag, text, user_id) values (8, '3679c935-0af2-4120-85e3-f1a157e16fa6.1263_5.jpg', 'winter','Some 1', 2);
insert into message(id, filename, tag, text, user_id) values (9, '51bb60da-b93c-4ebf-8ad0-dbf1c6c082bf.nature_1600_1200.jpeg', 'flower','Some 1', 2);