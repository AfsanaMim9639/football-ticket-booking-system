-- Query 1: Retrieve Champions League matches with 'Available' status
SELECT match_id, fixture, base_ticket_price
FROM Matches
WHERE tournament_category = 'Champions League'
AND match_status = 'Available';


-- Query 2: Users whose name starts with 'Tanvir' or contains 'Haque'
SELECT user_id, full_name, email
FROM Users
WHERE full_name ILIKE 'Tanvir%' OR full_name ILIKE '%Haque%';

-- Query 3: Bookings with missing payment_status (NULL handling)
SELECT booking_id, user_id, match_id, 
       COALESCE(payment_status, 'Action Required') AS systematic_status
FROM Bookings
WHERE payment_status IS NULL;

-- Query 4: Booking details with user name and match fixture (INNER JOIN)
SELECT b.booking_id, u.full_name, m.fixture, b.total_cost
FROM Bookings b
INNER JOIN Users u ON b.user_id = u.user_id
INNER JOIN Matches m ON b.match_id = m.match_id;