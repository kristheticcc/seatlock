-- CREATE TABLE statements
CREATE TABLE user (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(70),
    email VARCHAR(70),
    created_at TIMESTAMP
);

CREATE TABLE venue (
    venue_id INT AUTO_INCREMENT PRIMARY KEY,
    venue_name VARCHAR(70),
    address VARCHAR(70),
    city VARCHAR(70)
);

CREATE TABLE seat (
    seat_id INT AUTO_INCREMENT PRIMARY KEY,
    section_name VARCHAR(25),
    row_label VARCHAR(25),
    seat_number INT,
    venue_id INT,
    CONSTRAINT fk_venue
        FOREIGN KEY (venue_id)
        REFERENCES venue(venue_id)
);

CREATE TABLE event (
    event_id INT AUTO_INCREMENT PRIMARY KEY,
    event_name VARCHAR(60),
    category VARCHAR(60),
    description VARCHAR(100)
)