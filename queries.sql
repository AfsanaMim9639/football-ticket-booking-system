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