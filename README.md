# Football Ticket Booking System

## Project Overview

I have created a comprehensive database design and SQL query project for the **Football Ticket Booking System**. This assignment demonstrates skills in **database design, ERD relationships, and advanced SQL queries**.

---

# SQL Queries

The project includes the following SQL queries:

### Query 1

Retrieve all upcoming football matches belonging to the **'Champions League'** where the match status is **'Available'**.

### Query 2

Search for all users whose full names start with **'Tanvir'** or contain the phrase **'Haque'** (case-insensitive).

### Query 3

Retrieve all booking records where the payment status is missing (**NULL**), replacing the empty result with **'Action Required'**.

### Query 4

Retrieve match booking details along with the User's full name and the scheduled Match fixture teams.

### Query 5

Display a comprehensive list of all users and their booking IDs, ensuring that fans who have never bought a ticket are still listed.

### Query 6

Find all ticket bookings where the total cost is strictly higher than the average cost of all ticket bookings.

### Query 7

Retrieve the top 2 most expensive matches sorted by base ticket price, skipping the absolute highest premium match.

**All queries are included in `QUERY.sql` file ✅**

---

# ERD Design

## What I Did

### Designed Three Tables

* **Users** → Store user information
* **Matches** → Store football match details
* **Bookings** → Store ticket booking transactions

### Added Primary Keys (PK)

* `Users.user_id`
* `Matches.match_id`
* `Bookings.booking_id`

### Added Foreign Keys (FK)

* `Bookings.user_id` → `Users.user_id`
* `Bookings.match_id` → `Matches.match_id`

### Created Relationships

* **1 : M** → One user can make many bookings
* **M : 1** → One match can have many bookings
* **1 : 1** → Each booking row represents one user + one match + one seat

---

# ERD Diagram

* File: `Football_Ticket_Booking_ERD.drawio`

Drive Link:
https://drive.google.com/file/d/1HJhbv-6V9preJYVr0AlGYKhqjkYDMdm4/view?usp=sharing

---

# Video Content

### Question 1

What role does a Foreign Key play in the Bookings table, and how does it safeguard against entering a ticket sale for a match that doesn't exist?

### Question 2

Why are we unable to use an aggregate function like COUNT(booking_id) inside a standard WHERE clause to filter match rows? How does HAVING solve this?

### Question 3

If a Primary Key column guarantees that all row entries are completely unique, why does the database system also explicitly forbid it from containing a NULL value?

---

# Video Submission

* File: `PHB7A3.mp4`

Drive Link:
https://drive.google.com/file/d/1rMtNXWa6O90iLjG6T7t0HaDm5scCttZ2/view?usp=sharing

---

# GitHub Repository

## What I Did

* Uploaded all files to public GitHub repository
* Added comprehensive README
* Enabled public access

Repository Link:
https://github.com/Asadul1120/PHB7A3

All code and documentation included ✅
