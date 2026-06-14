---- SYSTEM: Football Ticket Booking System Database Setup ----

-- Create users table
CREATE TABLE Users (
    user_id int primary key,
    full_name varchar(100) not null,
    email varchar(100) unique not null,
    role varchar(20) check (role in ('Football Fan', 'Ticket Manager')) not null,
    phone_number varchar(20)
);

-- insert sample data 
INSERT INTO Users (user_id, full_name, email, role, phone_number) VALUES
(1, 'Tanvir Rahman', 'tanvir@mail.com', 'Football Fan', '+8801711111111'),
(2, 'Asif Haque', 'asif@mail.com', 'Football Fan', '+8801722222222'),
(3, 'Sajjad Rahman', 'sajjad@mail.com', 'Ticket Manager', '+8801733333333'),
(4, 'Jannat Ara', 'jannat@mail.com', 'Football Fan', null);


-- Create matches table
CREATE TABLE Matches (
    match_id int primary key,
    fixture varchar(100) not null,
    tournament_category varchar(50) not null,
    base_ticket_price decimal(10,2) check(base_ticket_price>=0) not null,
    match_status varchar(20) check (
        match_status in ('Available', 'Selling Fast', 'Sold Out', 'Postponed')
    ) not null
);


-- insert sample data
INSERT INTO Matches (match_id, fixture, tournament_category, base_ticket_price, match_status) VALUES
(101, 'Real Madrid vs Barcelona', 'Champions League', 150.00, 'Available'),
(102, 'Man City vs Liverpool', 'Premier League', 120.00, 'Selling Fast'),
(103, 'Bayern Munich vs PSG', 'Champions League', 130.00, 'Available'),
(104, 'AC Milan vs Inter Milan', 'Serie A', 90.00, 'Sold Out'),
(105, 'Juventus vs Roma', 'Serie A', 80.00, 'Available');