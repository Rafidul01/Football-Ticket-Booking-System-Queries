-- create users table
create table Users (
  user_id serial primary key,
  full_name varchar(50) not null,
  email varchar(50) unique not null,
  role varchar(20) check (role in ('Ticket Manager', 'Football Fan')),
  phone_number varchar(20)
);
