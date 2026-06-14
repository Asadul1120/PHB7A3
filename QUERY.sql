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



-- Create bookings table
CREATE TABLE Bookings (
    booking_id int primary key,
    user_id int not null references Users (user_id),
    match_id int not null references Matches (match_id),
    seat_number varchar(10),
    payment_status varchar(20) check (
        payment_status in ('Pending', 'Confirmed', 'Cancelled', 'Refunded')
    ),
    total_cost numeric(10, 2) not null check (total_cost >= 0)
);

-- insert sample data
INSERT INTO Bookings (booking_id, user_id, match_id, seat_number, payment_status, total_cost) VALUES
(501, 1, 101, 'A-12', 'Confirmed', 150.00),
(502, 1, 102, 'B-04', 'Confirmed', 120.00),
(503, 2, 101, 'A-13', 'Confirmed', 150.00),
(504, 2, 101, NULL, NULL, 150.00),
(505, 3, 102, 'C-20', 'Pending', 120.00);