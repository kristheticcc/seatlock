-- Sample data
INSERT INTO venue(venue_id, venue_name, address, city)
VALUES 
    (1, 'Chase Center', '1 Warriors Way', 'San Francisco'),
    (2, 'Levis Stadium', '4900 Marie P DeBartolo Way', 'Santa Clara'),
    (3, 'Bill Graham Civic Auditorium', '99 Grove Street', 'San Francisco'),
    (4, 'The Greek Theatre', '2001 Gayley Rd', 'Berkeley'),
    (5, 'The Filmore', '1805 Geary Blvd', 'San Francisco'),
    (6, 'SAP Center', '525 W Santa Clara St', 'San Jose'),
    (7, 'Oracle Park', '24 Willie Mays Plaza', 'San Francisco');


INSERT INTO event(event_id, event_name, category, description)
VALUES
    (1, 'Lakers vs. Warriors', 'Sports', '2026-11-23'),
    (2, 'Seahawks vs. 49ers', 'Sports', '2026-11-26'),
    (3, 'Drake Concert', 'Music', '2027-01-08'),
    (4, 'Druski Live', 'Comedy', '2026-12-30'),
    (5, 'Taylor Swift Concert', 'Music', '2027-02-13');


