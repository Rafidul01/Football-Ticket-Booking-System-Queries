-- create users table
create table Users (
  user_id serial primary key,
  full_name varchar(50) not null,
  email varchar(50) unique not null,
  role varchar(20) check (role in ('Ticket Manager', 'Football Fan')),
  phone_number varchar(20)
);

-- CREATE MATCHES TABLE
create table Matches (
  match_id serial primary key,
  fixture varchar(100) not null,
  tournament_category varchar(100) not null,
  base_ticket_price decimal(10, 2) not null check (base_ticket_price >= 0),
  match_status varchar(20) check (
    match_status in (
      'Available',
      'Selling Fast',
      'Sold Out',
      'Postponed'
    )
  )
);
