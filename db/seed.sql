-- Sample data for SeatLock
-- Run schema.sql before running this file
-- Assume a fresh, empty database

-- VENUES
INSERT INTO venues (venue_name, address, city)
VALUES 
    ('Chase Center', '1 Warriors Way', 'San Francisco'),
    ('Levis Stadium', '4900 Marie P DeBartolo Way', 'Santa Clara'),
    ('Bill Graham Civic Auditorium', '99 Grove Street', 'San Francisco'),
    ('The Greek Theatre', '2001 Gayley Rd', 'Berkeley'),
    ('The Fillmore', '1805 Geary Blvd', 'San Francisco'),
    ('SAP Center', '525 W Santa Clara St', 'San Jose'),
    ('Oracle Park', '24 Willie Mays Plaza', 'San Francisco'),
    ('Oakland Arena', '7000 Coliseum Way', 'Oakland'),
    ('Shoreline Amphitheatre', '1 Amphitheatre Pkwy', 'Mountain View'),
    ('San Jose Civic', '135 W San Carlos St', 'San Jose'),
    ('Fox Theatre', '1807 Telegraph Ave', 'Oakland'),
    ('Cow Palace', '2600 Geneva Ave', 'Daly City'),
    ('Frost Amphitheater', '351 Lasuen St', 'Stanford'),
    ('Mountain Winery', '14831 Pierce Rd', 'Saratoga'),
    ('Stanford Stadium', '625 Nelson Rd', 'Stanford'),
    ('Paramount Theatre', '2025 Broadway', 'Oakland'),
    ('Herbst Theatre', '401 Van Ness Ave', 'San Francisco'),
    ('War Memorial Opera House', '301 Van Ness Ave', 'San Francisco'),
    ('The Masonic', '1111 California St', 'San Francisco'),
    ('California Theatre', '345 S 1st St', 'San Jose');


-- EVENTS
INSERT INTO events (event_name, category, description)
VALUES
    ('Lakers vs. Warriors', 'Sports', 'Professional basketball game'),
    ('Seahawks vs. 49ers', 'Sports', 'Professional football game'),
    ('Drake Concert', 'Music', 'Hip-hop concert'),
    ('Druski Live', 'Comedy', 'Stand-up comedy show'),
    ('Taylor Swift Concert', 'Music', 'Pop concert'),
    ('Kendrick Lamar Live', 'Music', 'Hip-hop concert'),
    ('Tyler, the Creator Tour', 'Music', 'Alternative hip-hop concert'),
    ('Billie Eilish Live', 'Music', 'Alternative pop concert'),
    ('Sabrina Carpenter Tour', 'Music', 'Pop concert'),
    ('NewJeans World Tour', 'Music', 'K-pop concert'),
    ('Twice Live', 'Music', 'K-pop concert'),
    ('TXT World Tour', 'Music', 'K-pop concert'),
    ('Neon Nights Festival', 'Music', 'Electronic dance music festival'),
    ('Summer Sound Festival', 'Music', 'Outdoor multi-artist music festival'),
    ('Beyond the Bay', 'Music', 'Electronic music festival'),
    ('Bay Area Comedy Night', 'Comedy', 'Stand-up comedy showcase'),
    ('Golden State Warriors vs. Celtics', 'Sports', 'Professional basketball game'),
    ('Giants vs. Dodgers', 'Sports', 'Professional baseball game'),
    ('Bay FC vs. Portland Thorns', 'Sports', 'Professional soccer match'),
    ('The Nutcracker', 'Theater', 'Classical ballet performance');


 -- USERS
 INSERT INTO users (full_name, email)
 VALUES
    ('Alex Kim', 'alex.kim@example.com'),
    ('Sophia Martinez', 'sophia.martinez@example.com'),
    ('Hanni Pham', 'hanni.pham@example.com'),
    ('Liam Anderson', 'liam.anderson@example.com'),
    ('Lusi Zhao', 'lusi.zhao@example.com'),
    ('Benjamin Thompson', 'benjamin.thompson@example.com'),
    ('Minato Amamiya', 'minato.amamiya@example.com'),
    ('Jocelyn Garcia', 'Jocelyn.garcia@example.com'),
    ('Rohan Sharma', 'rohan.sharma@example.com'),
    ('Zeenat Rahmani', 'zeenat.rahmani@example.com'),
    ('James Moore', 'james.moore@example.com'),
    ('Stacy Gonzalez', 'stacy.gonzalez@example.com'),
    ('Nicole Guerrero', 'nicole.guerrero@example.com'),
    ('Elijah Martinez', 'elijah.martinez@example.com'),
    ('Junhee Park', 'junhee.park@example.com'),
    ('Ruonan Zhang', 'Ruonan.zhang@example.com'),
    ('Mio Imada', 'mio.imada@example.com'),
    ('Evelyn Robinson', 'evelyn.robinson@example.com'),
    ('Anh Nguyen', 'anh.nguyen@example.com'),
    ('Justin Lee', 'justin.lee@example.com');


-- SEATS
INSERT INTO seats (section_name, row_label, seat_number, venue_id)
VALUES
    ('Lower Bowl', 'A', 1, 1),
    ('Club Level', 'B', 2, 2),
    ('Floor', 'A', 3, 3),
    ('Reserved', 'C', 4, 4),
    ('Balcony', 'D', 5, 5),
    ('Lower Bowl', 'A', 6, 6),
    ('Field Level', 'B', 7, 7),
    ('Lower Bowl', 'C', 8, 8),
    ('VIP', 'A', 9, 9),
    ('Floor', 'B', 10, 10),
    ('Balcony', 'C', 11, 11),
    ('General Admission', 'A', 12, 12),
    ('Reserved', 'B', 13, 13),
    ('VIP', 'A', 14, 14),
    ('Upper Bowl', 'D', 15, 15),
    ('Orchestra', 'A', 16, 16),
    ('Mezzanine', 'B', 17, 17),
    ('Orchestra', 'C', 18, 18),
    ('Balcony', 'D', 19, 19),
    ('Reserved', 'A', 20, 20);


-- PERFORMANCES
INSERT INTO performances (event_id, venue_id, starts_at, base_price)
VALUES
    (1, 1, '2026-11-23 19:30:00', 85.00),
    (2, 2, '2026-11-26 18:30:00', 90.00),
    (3, 3, '2027-01-08 20:00:00', 120.00),
    (4, 4, '2026-12-13 19:00:00', 55.00),
    (5, 5, '2027-11-13 19:30:00', 150.00),
    (6, 6, '2027-01-15 20:00:00', 110.00),
    (7, 7, '2027-01-22 19:30:00', 100.00),
    (8, 8, '2027-02-05 20:00:00', 125.00),
    (9, 9, '2027-03-12 19:00:00', 95.00),
    (10, 10, '2027-03-20 19:30:00', 180.00),
    (11, 11, '2027-04-03 20:00:00', 160.00),
    (12, 12, '2027-04-17 19:30:00', 140.00),
    (13, 13, '2027-05-01 18:00:00', 90.00),
    (14, 14, '2027-05-15 16:00:00', 75.00),
    (15, 15, '2027-05-29 14:00:00', 130.00),
    (16, 16, '2027-05-05 20:00:00', 45.00),
    (17, 17, '2027-06-12 19:30:00', 100.00),
    (18, 18, '2027-06-19 18:00:00', 80.00),
    (19, 19, '2027-07-10 19:00:00', 65.00),
    (20, 20, '2027-12-18 19:00:00', 70.00);


-- RESERVATIONS
INSERT INTO reservations (user_id, status)
VALUES
    (1, 'CONFIRMED'),
    (2, 'CONFIRMED'),
    (3, 'CANCELLED'),
    (4, 'CONFIRMED'),
    (5, 'CANCELLED'),
    (6, 'CONFIRMED'),
    (7, 'CONFIRMED'),
    (8, 'CANCELLED'),
    (9, 'CONFIRMED'),
    (10, 'CONFIRMED'),
    (11, 'CANCELLED'),
    (12, 'CONFIRMED'),
    (13, 'CONFIRMED'),
    (14, 'CANCELLED'),
    (15, 'CONFIRMED'),
    (16, 'CONFIRMED'),
    (17, 'CANCELLED'),
    (18, 'CONFIRMED'),
    (19, 'CONFIRMED'),
    (20, 'CANCELLED');


-- RESERVATION ITEMS
INSERT INTO reservation_items (reservation_id, perf_id, seat_id, price_at_booking)
VALUES
    (1, 1, 1, 85.00),
    (2, 2, 2, 90.00),
    (3, 3, 3, 120.00),
    (4, 4, 4, 55.00),
    (5, 5, 5, 150.00),
    (6, 6, 6, 110.00),
    (7, 7, 7, 100.00),
    (8, 8, 8, 125.00),
    (9, 9, 9, 95.00),
    (10, 10, 10, 180.00),
    (11, 11, 11, 160.00),
    (12, 12, 12, 140.00),
    (13, 13, 13, 90.00),
    (14, 14, 14, 75.00),
    (15, 15, 15, 130.00),
    (16, 16, 16, 45.00),
    (17, 17, 17, 100.00),
    (18, 18, 18, 80.00),
    (19, 19, 19, 65.00),
    (20, 20, 20, 70.00);


-- AUDIT LOG
INSERT INTO audit_log (reservation_id, old_status, new_status)
VALUES
    (1, 'CANCELLED', 'CONFIRMED'),
    (2, 'CANCELLED', 'CONFIRMED'),
    (3, 'CONFIRMED', 'CANCELLED'),
    (4, 'CANCELLED', 'CONFIRMED'),
    (5, 'CONFIRMED', 'CANCELLED'),
    (6, 'CANCELLED', 'CONFIRMED'),
    (7, 'CANCELLED', 'CONFIRMED'),
    (8, 'CONFIRMED', 'CANCELLED'),
    (9, 'CANCELLED', 'CONFIRMED'),
    (10, 'CANCELLED', 'CONFIRMED'),
    (11, 'CONFIRMED', 'CANCELLED'),
    (12, 'CANCELLED', 'CONFIRMED'),
    (13, 'CANCELLED', 'CONFIRMED'),
    (14, 'CONFIRMED', 'CANCELLED'),
    (15, 'CANCELLED', 'CONFIRMED'),
    (16, 'CANCELLED', 'CONFIRMED'),
    (17, 'CONFIRMED', 'CANCELLED'),
    (18, 'CANCELLED', 'CONFIRMED'),
    (19, 'CANCELLED', 'CONFIRMED'),
    (20, 'CONFIRMED', 'CANCELLED');
