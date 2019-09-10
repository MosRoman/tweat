insert into usr (id, username, password, active,email) values (1, 'Admin', '$2a$10$y3nKDWcXPJE5pXm5xfeZP.osdkokTeh9Fkc0TKl5pAy6X0tXQmCrK', true,'email');

insert into usr (id, username, password, active, email) values (2, 'Developer', '$2a$08$YOlpCtK9/3g3sAuV7K1zoOZdpK19zLoxI6lJ9.ueXJHlWTnOxkcNO', true, 'morovo1988@gmail.com');

insert into user_role (user_id, roles) values (1, 'USER'), (1, 'ADMIN');
insert into user_role (user_id, roles) values (2, 'USER'), (2, 'ADMIN');
