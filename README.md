# Football Ticket Booking System - Database Design & SQL Queries

## Overview
This project is a simplified database design and SQL query assignment for a Football Ticket Booking System. It covers ERD design (1-to-many and many-to-1 relationships), primary/foreign keys, and intermediate-to-advanced SQL queries (JOINs, subqueries, aggregations, pattern matching, null handling, and pagination).

## ERD Diagram
[View ERD on draw.io](https://drive.google.com/file/d/1xQpPqMHLfts2pOy4BWG8GbljbMkdcKld/view?usp=sharing)

**Relationships:**
- One `Users` → Many `Bookings`
- One `Matches` → Many `Bookings`

## Database Schema

### 1. Users Table
| Field | Description |
|---|---|
| user_id (PK) | Unique ID for each user |
| full_name | First and last name |
| email | Login email |
| role | Football Fan or Ticket Manager |
| phone_number | Contact number |

### 2. Matches Table
| Field | Description |
|---|---|
| match_id (PK) | Unique ID for each match |
| fixture | Competing teams |
| tournament_category | League/Cup name |
| base_ticket_price | Base price for a seat |
| match_status | Available / Selling Fast / Sold Out / Postponed |

### 3. Bookings Table
| Field | Description |
|---|---|
| booking_id (PK) | Unique transaction ID |
| user_id (FK) | References Users |
| match_id (FK) | References Matches |
| seat_number | Allocated seat (e.g., A-12) |
| payment_status | Pending / Confirmed / Cancelled / Refunded |
| total_cost | Final invoice price |

## Files
- `schema.sql` — Table creation (CREATE TABLE) and sample data (INSERT statements)
- `queries.sql` — All 7 SQL queries with comments

## Queries Included
1. Champions League matches with 'Available' status
2. Search users by name pattern (LIKE / ILIKE)
3. Bookings with NULL payment status (IS NULL, COALESCE)
4. Booking details with user name and fixture (INNER JOIN)
5. All users with their bookings, including users with no bookings (LEFT JOIN)
6. Bookings above the average total cost (subquery + aggregation)
7. Top expensive matches, skipping the highest (LIMIT / OFFSET)

## How to Run
1. Create a database in PostgreSQL.
2. Run `schema.sql` to create the tables and insert sample data.
3. Run the queries from `queries.sql` one by one to see the results.
