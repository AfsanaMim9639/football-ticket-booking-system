-- Query 1: Retrieve Champions League matches with 'Available' status
SELECT match_id, fixture, base_ticket_price
FROM Matches
WHERE tournament_category = 'Champions League'
AND match_status = 'Available';


-- Query 2: Users whose name starts with 'Tanvir' or contains 'Haque'
SELECT user_id, full_name, email
FROM Users
WHERE full_name ILIKE 'Tanvir%' OR full_name ILIKE '%Haque%';